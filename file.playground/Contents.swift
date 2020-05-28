import Foundation

let fileName = "Test"
let dir = try? FileManager.default.url(for: .libraryDirectory, in: .userDomainMask, appropriateFor: nil, create: true)

let path = ".c2o/"

var dataPath = dir?.appendingPathComponent(path)

if !FileManager.default.fileExists(atPath: dataPath?.path ?? "") {
    do {
        try FileManager.default.createDirectory(atPath: dataPath?.path ?? "", withIntermediateDirectories: true, attributes: nil)
    } catch {
        print(error.localizedDescription);
    }
}

if let fileURL = dir?.appendingPathComponent(".c2o/\(fileName)") {

    // Write to the file named Test
    let outString = "Write this text to the file"
    do {
        try outString.write(to: fileURL, atomically: true, encoding: .utf8)
    } catch {
        print("Failed writing to URL: \(fileURL), Error: " + error.localizedDescription)
    }

    // Then reading it back from the file
    var inString = ""
    do {
        inString = try String(contentsOf: fileURL)
    } catch {
        print("Failed reading from URL: \(fileURL), Error: " + error.localizedDescription)
    }
    print("Read from the file: \(inString)")
}
