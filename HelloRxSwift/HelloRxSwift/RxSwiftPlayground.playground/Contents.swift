import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

//let subject = PublishSubject<String>()
//
//subject.onNext("Issue 1")
//
//subject.subscribe { event in
//    print(event)
//}
//
//subject.onNext("Issue 2")
//subject.onNext("Issue 3")
//
//subject.dispose()
//subject.onCompleted()
//subject.onNext("Issue 4")


//let subject = BehaviorSubject(value: "Initial Value")
//
//subject.onNext("Last Issue")
//
//subject.subscribe { event in
//    print(event)
//}
//
//subject.onNext("Issue 1")

//let subject = ReplaySubject<String>.create(bufferSize: 2)
//subject.onNext("Issue 1")
//subject.onNext("Issue 2")
//subject.onNext("Issue 3")
//
//subject.subscribe {
//    print($0)
//}
//
//subject.onNext("Issue 4")
//subject.onNext("Issue 5")
//subject.onNext("Issue 6")
//
//print("[Subscription 2]")
//subject.subscribe {
//    print($0)
//}

let relay = BehaviorRelay(value: [String]())
relay.accept(["Item 1"])

var value = relay.value
value.append("Item 2")
value.append("Item 3")
relay.accept(value)
relay.asObservable()
    .subscribe {
        print($0)
    }
relay.accept(relay.value + ["Item 2"])
