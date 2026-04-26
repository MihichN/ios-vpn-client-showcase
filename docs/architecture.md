# Architecture

```text
SwiftUI App -> VPN Session ViewModel -> VPN Runtime Manager
      |                  |
      v                  v
 User Actions      Packet Tunnel Extension
```

## Design Notes

- UI is driven by explicit connection states.
- The app target does not contain low-level tunnel implementation details.
- Runtime operations are represented as async commands.
- Errors are mapped to user-facing states instead of leaking provider internals.

## Public-Safe Simplification

This showcase does not include the real tunnel provider, XRay runtime integration, subscription endpoint parsing, entitlements, or signing configuration.
