# AnalyticsTracker

A type that tracks analytics events.

``` swift
public protocol AnalyticsTracker: AnyObject
```

## Inheritance

`AnyObject`

## Associated Types

## Event

An analytics event.

``` swift
Typealias(context: Optional("AnalyticsTracker"), attributes: [], modifiers: [], keyword: "typealias", name: "Event", initializedType: Optional("Analytics.Event<State, Action, ParameterKey>"), genericParameters: [], genericRequirements: [])
```

## ID

A type representing a tracker's identifier.

``` swift
Typealias(context: Optional("AnalyticsTracker"), attributes: [], modifiers: [], keyword: "typealias", name: "ID", initializedType: Optional("String"), genericParameters: [], genericRequirements: [])
```

## Required Properties

## id

The identifier of the tracker. The default is the tracker's type name.

``` swift
var id: ID
```

## id

``` swift
var id: ID
```

## Required Methods

## track(\_:)

Tracks an analytics event.

``` swift
func track(_ event: Event)
```

  - Parameter event: The event to track.
