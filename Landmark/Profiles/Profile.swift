//
//  Profile.swift
// プロフィール情報を管理する構造体
//  Landmark
//
//  Created by 辻大地 on 2021/12/14.
//

import Foundation

struct Profile {
    var username: String // ユーザー名
    var prefersNotificationns = true // 通知ON/OFF
    var seasonalPhoto = Season.winter // 季節の写真
    var goalDate = Date() // ゴールした日
    
    // defaultは予約された単語なので通常変数名などでは使えない
    // もし変数名としてどうしても扱いたい場合は、``で囲む
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
            case spring = "spring"
            case summer = "summer"
            case autumn = "autumn"
            case winter = "☃️"
     
            var id: String { self.rawValue }
        }
}
