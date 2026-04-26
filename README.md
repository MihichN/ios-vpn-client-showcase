# iOS VPN Client Showcase

Public-safe showcase of an iOS VPN client with a SwiftUI interface and Network Extension based architecture.

## Highlights

- SwiftUI app surface for connection state and user actions.
- Packet Tunnel extension boundary in the private implementation.
- Runtime manager abstraction for VPN lifecycle.
- State-driven UI design for connect/disconnect/error flows.

## Tech Stack

- Swift, SwiftUI.
- Network Extension architecture.
- Xcode project structure in the private implementation.

## Repository Contents

- `docs/architecture.md` - iOS app and extension boundaries.
- `examples/connection-state/ConnectionState.swift` - safe connection-state model.

## Confidentiality Notice

The production implementation is private. This showcase excludes server configs, subscription endpoints, entitlements, signing assets, and VPN runtime integration details.
