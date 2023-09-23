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
            Text("Image from URL")
        }
    }
}

#Preview {
    ContentView()
}
