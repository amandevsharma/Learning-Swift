import UIKit

/* if all we care about is whether the function succeeded or failed, we can use an optional
 try to have the function return an optional value.
*/
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
/* This is where try? helps: it makes getUser() return an optional string, which will be nil if any errors are thrown. If you want to know exactly what error happened then this approach won’t be useful, but a lot of the time we just don’t care.
*/

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

/*
 You’ll find try? is mainly used in three places:
 In combination with guard let to exit the current function if the try? call returns nil.
 In combination with nil coalescing to attempt something or provide a default value on failure.
 When calling any throwing function without a return value, when you genuinely don’t care
 if it succeeded or not – maybe you’re writing to a log file or sending analytics to a server, for example.
*/

//When using try you must catch all errors that can be thrown
//You can combine try? with if let
//Using try? converts a function's return value into an optional.
//If you use try you must either catch the error or mark your function as throws
