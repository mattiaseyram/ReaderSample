// CalendarManager.swift

import Foundation
import FolioReaderKit

@objc(ReaderManager)
class ReaderManager: NSObject {

  @objc(addEvent:value:callback:)
  func addEvent(name: String, value: String, callback: RCTResponseSenderBlock) -> Void {
    print("\(name): \(value)")
    callback([NSNull(), ["success": true, "name": name, "value": value]])
  }
  
  @objc(open)
  func open() -> Void {
    DispatchQueue.main.async {
      let viewController = UIApplication.shared.keyWindow?.rootViewController
      if (viewController != nil) {
        let config = FolioReaderConfig()
        let bookPath = Bundle.main.path(forResource: "alice", ofType: "epub")
        let folioReader = FolioReader()
        folioReader.presentReader(parentViewController: viewController!, withEpubPath: bookPath!, andConfig: config)
      }
    }
  }
}
