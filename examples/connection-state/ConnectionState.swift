import Foundation

enum VPNConnectionState: Equatable {
    case disconnected
    case connecting
    case connected(since: Date)
    case disconnecting
    case failed(message: String)

    var canStart: Bool {
        if case .disconnected = self {
            return true
        }
        return false
    }

    var canStop: Bool {
        if case .connected = self {
            return true
        }
        return false
    }
}

final class VPNConnectionViewModel: ObservableObject {
    @Published private(set) var state: VPNConnectionState = .disconnected

    func start() {
        guard state.canStart else { return }
        state = .connecting

        // Public-safe placeholder. The private app calls the tunnel manager here.
        state = .connected(since: Date())
    }

    func stop() {
        guard state.canStop else { return }
        state = .disconnecting
        state = .disconnected
    }
}
