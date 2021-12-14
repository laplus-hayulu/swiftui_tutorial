import SwiftUI

struct Badge: View {
    var body: some View {
        Path { path in
            path.addLines([
                           CGPoint(x: 100, y: 100), // 左上
                           CGPoint(x: 200, y: 200), // 右下
                           CGPoint(x: 200, y: 100), // 右上
                           CGPoint(x: 100, y: 100), // 左上に戻る
                        ])
        }.stroke()
    }
}

struct Badge_previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
