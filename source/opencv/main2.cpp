#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>

///////////////// Basic Functions  //////////////////////

int main() {

    std::string path{"Resources/test.png"};
    cv::Mat img{cv::imread(path)};
    cv::Mat imgGray, imgBlur, imgCanny, imgDil, imgErode;

    cv::cvtColor(img, imgGray, cv::COLOR_BGR2GRAY);
    cv::GaussianBlur(img, imgBlur, cv::Size(3, 3), 3, 0);
    cv::Canny(imgBlur, imgCanny, 50, 100);

    cv::Mat kernel{cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3))};
    cv::dilate(imgCanny, imgDil, kernel);
    cv::erode(imgDil, imgErode, kernel);

    cv::imshow("Image", img);
    cv::imshow("Image Gray", imgGray);
    cv::imshow("Image Blur", imgBlur);
    cv::imshow("Image Canny", imgCanny);
    cv::imshow("Image Dilation", imgDil);
    cv::imshow("Image Eride", imgErode);

    cv::waitKey(0);

    return 0;
}

