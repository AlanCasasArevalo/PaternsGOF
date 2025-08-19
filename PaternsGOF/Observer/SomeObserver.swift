import Foundation

class SomeObserver: NSObject {
    var result: String?
    
    override func observeValue(
        forKeyPath keyPath: String?,
        of object: Any?,
        change: [NSKeyValueChangeKey : Any]?,
        context: UnsafeMutableRawPointer?) {
            
        guard let keyPath = keyPath,  let change = change else {
            return
        }
        
        if let newName = change[NSKeyValueChangeKey.newKey],
            let oldName = change[NSKeyValueChangeKey.oldKey] {
            
            result = "La propiedad con el keyPath '\(keyPath)' antes era \(oldName) y ahora tiene el valor \(newName)"
        }
    }
}
