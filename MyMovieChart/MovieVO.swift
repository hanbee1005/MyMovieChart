//
//  MovieVO.swift
//  MyMovieChart
//
//  Created by 손한비 on 2021/07/20.
//

import Foundation
import UIKit

class MovieVO {
    var thumbnail: String? // 영화 썸네일 이미지 주소
    var title: String? // 영화 제목
    var description: String? // 영화 설명
    var detail: String? // 상세정보
    var opendate: String? // 개봉일
    var rating: Double? // 평점
    
    // 영화 썸네일 이미지를 담을 UIImage 객체를 추가
    var thumnailImage: UIImage?
}
