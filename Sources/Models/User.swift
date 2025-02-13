import Foundation
import Mocks

public struct User: AutoCopy {
  public let name: String
  public let age: Int

  public init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}
