#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>

///////////////// Images  //////////////////////

//int main() {
//    std::string path{"Resources/test.png"};
//    cv::Mat img{cv::imread(path)};
//    imshow("Image", img);
//    cv::waitKey(0);
//
//    return 0;
//}


///////////////// Video  //////////////////////

//int main() {
//
//    std::string path{"Resources/test_video.mp4"};
//    cv::VideoCapture cap(path);
//
//    cv::Mat img;
//
//    while (true) {
//
//        cap.read(img);
//
//        imshow("Image", img);
//        cv::waitKey(20);
//
//    }
//
//    return 0;
//}

///////////////// Webcam  //////////////////////

int main() {

    cv::VideoCapture cap(0); // multiple camera
    cv::Mat img;

    while (true) {

        cap.read(img);

        imshow("Image", img);
        cv::waitKey(1);

    }

    return 0;
}

