import UIKit

var greeting = "Hello, playground"


// Concurrency

// Synchronous vs Asynchronous
// serial vs concurrent
// queues vs thread
// GCD

// Thread //Task
// Serial + Sync = order
//serial + async = order
//concurrent + sync = order
//concurrent + async = unorder

func queueTestinh() {
    let myqueue = DispatchQueue(label: "Joshi Priyanka.seial.queue", attributes: .concurrent)

    myqueue.async {
        print("Task 1 started")

        // do some work
        for index in 1...5 {
            print("\(index) time 5 is \(index * 5)")
        }
        print("Task 1 finished")
    }

    myqueue.async {
        print("Task 2 started")

        // do some work

        for index in 1...3 {
            print("\(index) time is 5 is \(index * 5)")
        }
        print("Task 2 finished")
    }
}

queueTestinh()

// dispatch group:- notify:- Async

func notifyDiaprtchqueue() {
    let group = DispatchGroup()
    let queuee = DispatchQueue(label: "PILU.com")
    let somequeue = DispatchQueue(label: "piluu.com")

    queuee.async(group: group){
        for _ in 0...25 {
            print("Queue:- task one running")
        }
    }

    queuee.async(group: group){
        for _ in 0...15 {
            print("Queue: task two running")
        }
    }

    somequeue.async(group: group){
        for _ in 0...45 {
            print("Somequeue:- task two running")
        }
    }

    group.notify(queue: DispatchQueue.main){
        print("All jobs have completed")

    }
}

notifyDiaprtchqueue()


// Sync:- wait

func syncWaitingroup() {
    let groupp = DispatchGroup()
    let queee = DispatchQueue.global()

    queee.async(group: groupp){
        print("start job 1")
        Thread.sleep(until: Date().addingTimeInterval(4))
        print("End job 1")
    }

    queee.async(group: groupp){
        print("Start job 2")
        Thread.sleep(until: Date().addingTimeInterval(2))
        print("End job 2")
    }

    if groupp.wait(timeout: .now() + 5) == .timedOut {
        print("I got tried of waiting")
    }else{
        print("Completed task")
    }
}

syncWaitingroup()


// Async:- enter, leave

func asyncenteleave() {

    let groupe = DispatchGroup()
    let queee = DispatchQueue.global()

    // Task 1
    queee.async(group: groupe) {
    groupe.enter()  // 1
        print("Starting Task 1")
        sleep(2) // Simulate a delay
        print("Task 1 Done")
        groupe.leave()  // 0
    }

    // Task 2
    queee.async(group: groupe) {
    groupe.enter()   // 1
        print("Starting Task 2")
        sleep(1) // Simulate a delay
        print("Task 2 Done")
        groupe.leave() //0
    }

    // Notify when all tasks are complete
    groupe.notify(queue: .main) {
        print("All tasks are complete")
    }
}

asyncenteleave()


/*func downloadmusic(name: String) -> String {

    let queee = DispatchQueue.global()

    queee.astnc {
        let _ =  self.downloadmusic(name: "o ha")
    }
    sleep(4)

}*/
