# Analytics

A type representing the Analytics namespace (case-less enum).

``` swift
public enum Analytics
```

## Nested Types

  - [Analytics.Event](Analytics_Event)
  - Analytics.MultiTrackerError
  - Analytics.MultiTracker
  - Analytics.AnyAnalyticsTracker

## Nested Type Aliases

## Parameters

A typealias representing a dictionary of analytics parameters.

``` swift
Typealias(context: Optional("Analytics"), attributes: [], modifiers: [public], keyword: "typealias", name: "Parameters", initializedType: Optional("[Key : Any]"), genericParameters: [Key: AnalyticsParameterKey], genericRequirements: [])
```

## Enumeration Cases

## duplicateTracker

A tracker with the same id already registered.

``` swift
case duplicateTracker(: AnalyticsTracker.ID)
```

## inexistentTracker

A tracker with the given id isn't registered.

``` swift
case inexistentTracker(: AnalyticsTracker.ID)
```

## Initializers

## init()

Creates an analytics multi tracker instance.

``` swift
public init()
```

## init(\_:)

Creates a type-erased instance of an analytics tracker that wraps the given instance.

``` swift
public init<T: AnalyticsTracker>(_ tracker: T) where T.State == State, T.Action == Action, T.ParameterKey == ParameterKey
```

### Parameters

  - tracker: The analytics tracker instance to wrap.

## Properties

## trackers

The registered sub trackers (read only).

``` swift
var trackers: [AnyAnalyticsTracker<State, Action, ParameterKey>]
```

## id

The type-erased tracker's wrapped instance id.

``` swift
let id: ID
```

## \_trackers

The registered sub trackers.

``` swift
let _trackers: Atomic<[AnyAnalyticsTracker<State, Action, ParameterKey>]>
```

## Methods

## register(\_:)

Registers a sub tracker, and starts sending any new analytics events to it. This method is thread safe.

``` swift
public func register<T: AnalyticsTracker>(_ tracker: T) throws where T.State == State, T.Action == Action, T.ParameterKey == ParameterKey
```

  - Parameter tracker: The analytics tracker to register.

### Throws

An `Analytics.MultiTrackerError.duplicateTracker` error if a tracker with the same `id` is already registered.

## unregister(\_:)

Unregisters a sub tracker, preventing any new analytics events from being sent to it. This method is thread
safe.

``` swift
public func unregister<T: AnalyticsTracker>(_ tracker: T) throws where T.State == State, T.Action == Action, T.ParameterKey == ParameterKey
```

  - Parameter tracker: The analytics tracker to unregister.

### Throws

An `Analytics.MultiTrackerError.inexistentTracker` error if a tracker with the same `id` isn't registered.

## track(\_:)

Tracks an analytics event, by propagating it to all the registered sub trackers.

``` swift
public func track(_ event: Analytics.Event<State, Action, ParameterKey>)
```

  - Parameter event: The event to track.

## track(\_:)

Tracks an analytics event via the wrapped tracker.

``` swift
public func track(_ event: Analytics.Event<State, Action, ParameterKey>)
```

  - Parameter event: The analytics event.
