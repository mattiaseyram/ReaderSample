// CalendarManager.swift

import Foundation

@objc(ReaderManager)
class ReaderManager: NSObject {

  @objc(addEvent:value:callback:)
  func addEvent(name: String, value: String, callback: RCTResponseSenderBlock) -> Void {
    print("\(name): \(value)")
    callback([NSNull(), ["success": true, "name": name, "value": value]])
  }

  @objc
  func constantsToExport() -> [String: Any]! {
    return ["someKey": "someValue"]
  }
}
