//  HelloWorld.swift

import SwiftUI

public struct HelloWorldView: View {
  public init() {}

  public var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, world!")
    }
    .padding()
  }
}

#if DEBUG
  #Preview {
    HelloWorldView()
  }
#endif
