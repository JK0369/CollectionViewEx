//
//  MyModel.swift
//  CollectionViewEx
//
//  Created by 김종권 on 2021/07/18.
//

import UIKit

struct MyModel {
    let color: UIColor
    let commentString: String
    let contentHeightSize: CGFloat

    static func getMock() -> [Self] {

        var datas: [MyModel] = []

        let number = arc4random_uniform(30) // 0 ~ 29
        for i in 0...number {
            let red = CGFloat(arc4random_uniform(256))
            let green = CGFloat(arc4random_uniform(256))
            let blue = CGFloat(arc4random_uniform(256))
            let alpha = CGFloat(drand48()) // 0 ~ 1

            let color = UIColor.init(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
            let tmpHeight = CGFloat(arc4random_uniform(500))
            let imageHeightSize = tmpHeight < 50 ? 50 : tmpHeight
            let myModel: MyModel = .init(color: color,
                                         commentString: "\(i + 1) cell",
                                         contentHeightSize: imageHeightSize)
            datas += [myModel]
        }

        return datas
    }
}
