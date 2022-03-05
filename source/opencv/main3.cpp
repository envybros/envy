#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>

///////////////// Resize and Crop //////////////////////

int main() {

    std::string path{"Resources/test.png"};
    cv::Mat img{cv::imread(path)};
    cv::Mat imgResize;

    // 480 x 640
//    std::cout << img.size() << '\n';
    cv::resize(img, imgResize, cv::Size(), 0.5, 0.5);

    cv::Rect roi(100, 100, 300, 250);
    cv::Mat imgCrop{img(roi)};

    cv::imshow("Image", img);
    cv::imshow("Image Resize", imgResize);
    cv::imshow("Image Crop", imgCrop);

    cv::waitKey(0);

    return 0;
}

