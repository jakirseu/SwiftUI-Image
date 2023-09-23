import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            // image from sf symbols 
            Image(systemName: "leaf")
                .imageScale(.large)
            // image from assets
            Image("apple")
                .resizable()
                .scaledToFit()
                .frame(maxWidth:  200, maxHeight: 200)
                
            Text("Apple")
            // image from url
            AsyncImage(url: URL(string: "https://picsum.photos/536/354"))
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 5)
                 }
                .shadow(radius: 10)
                
        }
    }
}

#Preview {
    ContentView()
}
