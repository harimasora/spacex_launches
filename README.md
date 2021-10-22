# SpaceX Launches

## Notes

Any notes you might want us to be aware of.

### Date

21/10/2021

### Instructions for how to build & run the app

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

### Time spent

7h:16min

### Assumptions made

Use this section to tell us about any assumptions that you made when creating your solution.

### Assume your application will go into production

1. What would be your approach to ensuring the application is ready for production (testing)?
2. How would you ensure a smooth user experience as 1000s of users start using your app simultaneously?
3. What key steps would you take to ensure application security?

ANSWERS:

1. It's not ready for production by a long shot. For one, there isn't a single unit test.
2. By using the local cache we can minimize the stress on the server. Besides this, there shouldn't be any major performance problems.
3. It doesn't really apply for this application. There are no information being sent whatsoever.

### Shortcuts/Compromises made

There were LOTS of stuff that I wanted to do, but since the project was supposed to be done in 4-6h, I tried to stick to it as much as I could. Having said that, what I intended to do but didn't have time was (in priority):

1. Unit tests for the domain, infrastructure and application layers.
2. A much better UI. I changed my mind a lot during the way which had cost me precious time.
3. A local notification to demonstrate the deep link functionality.

### Why did you choose the specific technology/patterns/libraries?

I chose them based on familiarity and industry standards.

### Stretch goals attempted

I implemented the offline support. Deep link was also relatively straight forward but I ran out of time. Navigator 2.0 is a topic that I have yet to master so I'd leave it for last.

### Other information about your submission that you feel it's important that we know

### Your feedback on this technical challenge

Have feedback for how we could make this assignment better? Please let us know.
