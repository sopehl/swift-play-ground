import SQLite3

func open(path: String) throws -> SQLiteDatabase {
  var db: OpaquePointer?
  // 1
  if sqlite3_open(path, &db) == SQLITE_OK {
    // 2
    return SQLiteDatabase(dbPointer: db)
  } else {
    // 3
    defer {
      if db != nil {
        sqlite3_close(db)
      }
    }
    if let errorPointer = sqlite3_errmsg(db) {
      let message = String(cString: errorPointer)
      throw SQLiteError.OpenDatabase(message: message)
    } else {
      throw SQLiteError
        .OpenDatabase(message: "No error message provided from sqlite.")
    }
  }
}
