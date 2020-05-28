DispatchQueue.global(qos: .userInteractive).async {
    DispatchQueue.main.async {
        let notification = NSUserNotification()
        
        let repeatInt = NSDateComponents()
        repeatInt.minute = 1
        notification.deliveryRepeatInterval = repeatInt as DateComponents
        notification.deliveryDate = NSDate(timeIntervalSinceNow: 10) as Date
        notification.identifier = "unique-ida"
        notification.title = "Helloa"
        notification.subtitle = "How are you?a"
        notification.informativeText = "This is aa test"
        notification.soundName = NSUserNotificationDefaultSoundName
        
        // Manually display the notification
        let notificationCenter = NSUserNotificationCenter.default
        notificationCenter.deliver(notification)
        notificationCenter.scheduleNotification(notification)
    }
}
