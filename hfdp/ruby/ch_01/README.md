#Chapter 1 - Strategy Pattern

In this chapter we apply the strategy pattern to a series of duck objects. Here,
we start with a Duck class with three methods: quack, swim and fly. We then have
other classes of ducks, MallardDuck and RedheadDuck. 

This works great until we decided to add RubberDuck and realize the rubber duck
doesn't fly! We've given a rubber duck the ability fly! Oh noes! 

In the end, we create modules for the above behaviors. For each class, we only
include the appropriate modules. As rubber duck does not fly, we define its 
behavior uniquely. 
