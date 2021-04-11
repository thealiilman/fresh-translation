# Fresh Translation
Fresh Translation is used for me to prepare my talk at Ruby Ireland 31st of March 2021 meetup.

<details>
  <summary>Why is it called Fresh Translation?</summary>

  > If you gave me a fresh translation
  > 
  > I would only crush its tender letters
  > 
  > With me you'll have no escape
  > 
  > And at the same time there'll be no word to utter
  
  Ay, it is Carnation by the Jam!

  [![https://img.youtube.com/vi/SJOgIOJuO2Q/0.jpg](https://img.youtube.com/vi/SJOgIOJuO2Q/0.jpg)](https://www.youtube.com/watch?v=SJOgIOJuO2Q)
</details>

## How to run the app
1. Ensure that you are running Ruby 3.0.0
2. `bundle install` to install dependencies
3. `rails db:create db:migrate` to create and migrate the databases
4. Voila, `rails s` and `rails c` shall work

## How to see locale leakage and prevention of locale leakage in action
See https://github.com/thealiilman/fresh-translation/blob/main/app/controllers/phrases_controller.rb#L1
