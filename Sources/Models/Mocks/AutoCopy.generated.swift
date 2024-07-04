// Generated using Sourcery 2.2.5 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// swift-format-ignore-file
import Foundation
import SwiftUI

public extension User {
  // A default style constructor for the .copy fn to use
  init(
    name: String,
    age: Int,
    // This is to prevent overriding the default init if it exists already
    forCopyInit _: Void? = nil
  ) {
    self.name = name
    self.age = age
  }

  // struct copy, lets you overwrite specific variables retaining the value of the rest
  // using a closure to set the new values for the copy of the struct
  func copy(build: (inout Builder) -> Void) -> User {
    var builder = Builder(original: self)
    build(&builder)
    return builder.toUser()
  }

  struct Builder {
    public var name: String
    public var age: Int
    fileprivate init(original: User) {
      name = original.name
      age = original.age
    }

    fileprivate func toUser() -> User {
      User(
        name: name,
        age: age
      )
    }
  }
}
