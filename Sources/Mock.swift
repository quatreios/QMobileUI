//
//  Mock.swift
//  QMobileUI
//

import Foundation
import UIKit

open class ListForm___LISTFORMTYPE___: UIViewController {
    open var tableName: String { return "" }
    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}
}
open class ListFormTable: ListForm___LISTFORMTYPE___ {}
open class ListFormCollection: ListForm___LISTFORMTYPE___ {}
open class DetailsForm___DETAILFORMTYPE___: UIViewController, DetailsForm {
    open func onLoad() {}
    open func onWillAppear(_ animated: Bool) {}
    open func onDidAppear(_ animated: Bool) {}
    open func onWillDisappear(_ animated: Bool) {}
    open func onDidDisappear(_ animated: Bool) {}
}
open class DetailsFormBare: DetailsForm___DETAILFORMTYPE___ {}

public protocol DetailsForm {}
extension DetailsForm {
    public var record: Record? { return nil }
}
open class ___TABLE___ {

}
public class Record: NSObject {
    public var store: Any

    init(store: [String: AnyObject]) {
        self.store = store
    }
    open override func value(forKeyPath keyPath: String) -> Any? {
        return (store as? [String: AnyObject])?[keyPath]
    }

}

public extension UIView {

    var bindTo: BindTo {
        return BindTo(record: Record(store: [:]))
    }
}

public class BindTo {
    public var record: Record
    init(record: Record) {
        self.record = record
    }
}
