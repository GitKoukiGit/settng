import SwiftUI
struct TggleBtnView: View {
    @Binding var AirlaneMode:Bool
    
    var body: some View {
        Toggle(isOn: $AirlaneMode){
            Text("\(AirlaneMode ? "ON" : "OFF")")
        }.fixedSize()
    }
}
