# Analytics.Event

An analytics event representing either a state update or a user action, with an associated value and parameters.

``` swift
public enum Event<State, Action, Key: AnalyticsParameterKey>
```

The goal is to allow using a type safe representation of all possible analytics event types, e.g. using
`enum`'s for `State` and `Action` types.

Examples of *state* events:

Examples of *action* events:

## Enumeration Cases

## state

``` swift
case state(: State, : Parameters<Key>?)
```

## action

``` swift
case action(: Action, : Parameters<Key>?)
```
