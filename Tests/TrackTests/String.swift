import Foundation

extension String {
    /// Creates a string from the `dump` output of the given value.
    init<T>(dumping x: T) {
        self.init()
        dump(x, to: &self)
    }
}
