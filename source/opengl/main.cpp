#define GL_SILENCE_DEPRECATION

#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include <iostream>

// --> How I Deal with Shaders in OpenGL
static unsigned int compileShader(unsigned int type, const std::string &source) {
    unsigned int id{glCreateShader(type)};
    const char *src{source.c_str()};
    glShaderSource(id, 1, &src, nullptr);
    glCompileShader(id);

    int result;
    glGetShaderiv(id, GL_COMPILE_STATUS, &result);

    if (result == GL_FALSE) {
        int length;
        glGetShaderiv(id, GL_INFO_LOG_LENGTH, &length);
        char *message{(char *) alloca(length * sizeof(char))};
        glGetShaderInfoLog(id, length, &length, message);
        std::cout << "Failed to compile " <<
                  (type == GL_VERTEX_SHADER ? "vertex" : "fragment")
                  << " shader!!" << '\n';
        std::cout << message << '\n';
        glDeleteShader(id);
        return 0;
    }

    return id;
}

static unsigned int createShader(const std::string &vertexShader, const std::string &fragmentShader) {
    unsigned int program{glCreateProgram()};
    unsigned int vs{compileShader(GL_VERTEX_SHADER, vertexShader)};
    unsigned int fs{compileShader(GL_FRAGMENT_SHADER, fragmentShader)};

    glAttachShader(program, vs);
    glAttachShader(program, fs);
    glLinkProgram(program);
    glValidateProgram(program);

    glDeleteShader(vs);
    glDeleteShader(fs);

    return program;
}

int main(void) {
    /* Initialize the library */
    if (!glfwInit())
        return -1;

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
#ifdef __APPLE__
    std::cout << "I'm apple machine" << '\n';
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

    /* Create a windowed mode window and its OpenGL context */
    GLFWwindow *window{glfwCreateWindow(640, 480, "Hello World", NULL, NULL)};
    if (!window) {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    if (glewInit() != GLEW_OK)
        std::cout << "Error!" << '\n';

    std::cout << glGetString(GL_VERSION) << '\n';

    float positions[6]{
            -0.5f, -0.5f,
            0.0f, 0.5f,
            0.5f, -0.5f
    };

    unsigned int VBO, VAO;
    glGenBuffers(1, &VBO);
    glGenVertexArrays(1, &VAO);
    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, 6 * sizeof(float), positions, GL_STATIC_DRAW);

    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(float) * 2, 0);

    std::string vertexShader{
            "#version 330 core\n"
            "\n"
            "layout(location = 0) in vec4 position;\n"
            "void main()\n"
            "{\n"
            "    gl_Position = position;\n"
            "}\n"
    };
    std::string fragmentShader{
            "#version 330 core\n"
            "\n"
            "out vec4 color;\n"
            "void main()\n"
            "{\n"
            "    color = vec4(1.0, 0.0, 0.0, 1.0);\n"
            "}\n"
    };
    unsigned int shader{createShader(vertexShader, fragmentShader)};
    glUseProgram(shader);

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window)) {
        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);

        glDrawArrays(GL_TRIANGLES, 0, 3);

        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }

    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteProgram(shader);
    glfwTerminate();
    return 0;
}
