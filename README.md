# Movie Database Design

## Project Introduction :hourglass:
Internet Movie Database (IMDb) is a team project in course Database Design and Modeling, and this database is based on SQL language. It contains a list of different types of media including movies and television show s, along with the people involved in the making of these films/shows that have been released since the year 2000. These titles will be accompanied by relevant information respective to the type of media. Movies and television shows will have the names of the directors, producers, writers, creators, and actors as well as brief descriptions, release dates...etc. Furthermore, we will also include awards won by the people involved in the making of the movies and tv shows.

For our sample data, we gathered data from the IMDb website. IMDb contains a very large amount of data, so everything we will be working with is real and not hypothetical. Since the data we desire would come from a particular time frame, we had to filter our searches to find media that was released after the year 2000 and utilize that information to fill out our database.

When I was doing this project with my teammates, we had many challenges. For example, we found that the relationship between tables is complicate. If we can not create a clear relationship between these tables, the data base would have some problems and it will cause queries to fail. Or, we need to choose a table as a center table. Otherwise, the relationships between tables will be confused. Fortunately, we across these challenges. We had great communication to deal with these challenges. We used GroupMe to discuss problems, and hold online meeting every week by Zoom. The contribution of mine in this project will be designing the IMDb structure, creating 4 queries to complete specific purpose, designing and operating SQL to crate data base and EER Diagram, and creating the backup of this data base. I believe I have a level of contribution when I was doing this project with my team. I also learned a lot by this project.


## EER Diagram :airplane:
In our ERD, we made seven tables, added the columns and specified our primary keys. Our tables have one-to-many relationships with one another, meaning an element from one table was linked to many elements of another. Take for example the relationship between the Movies table, Peoples table and People_type table. A movie involves many different people and types of people, i.e. directors, actors, producers. The Movie table is linked to many elements of the Peoples table as is the People_type table. The Peoples table, however, is only linked to one element from each of those tables and acts as a linking table between the two tables.
![image](https://user-images.githubusercontent.com/73493858/222943889-aaed6790-42e3-467f-a57c-f71823c3932a.png)


## Sample Data :passenger_ship:
During the sample data collection/creation, we decided to manually insert our data into our database and not use the importing functionality. We have included a total of 7 tables in our database and each table contains more than 15 rows that can be well interacted throughout the query process. We used the People's table as our main table that connects most of the table using primary/foreign keys. We mainly focused on retrieving data in a dataframe and tried to give relationships on other subjects. In our old ERD, we had event and music tables included in our database, however we decided to remove them due to the irrelevance to the Awards table. Awards table covered most of the dataset and components needed to the Event table
    
## Views/Queries :vertical_traffic_light:
Query 1: 
    Create a view that shows movie_title,description,release date,movie genre and movie rating from movies table joined by movies_detailed table using movie_detailed_id. The query was filtered by WHERE clause, which was only showing the data that had movie rating more than 7.0, grouped by movie title. The view was called “decent_rating”.
       
Query 2: 
    Create a view that shows Actor Name, Show Title, Director Name, Producer Name,
and Release Date. This query JOIN three tables. Those tables are peoples, television_show, and television_show_detail table. Also, this view only shows the actor whose born year is before 1900.

Query 3: 
    Create a view that shows Actor or Actress and Average of born year. The purpose of
this view is to let users know what the average birth year is for actors or actresses in our database. In this query, we use GROUP BY to get two groups of actors. Then, we SELECT the born_year and use AVG and ROUND functions to get the Average of born year. We also use WHERE to filter those people who are not actors.

Query 4: 
    Create a view that shows Name, Movie Name, Award Name, and Received Year. This view will display the actors and their awards, and when they received the award. Also, let users know the movie name that the actor or actress acted in.
    
Query 5: 
    Create a view that shows Actor Name, Movie Title, and Show Title. This view will show the movie and show titles that the actor performed before. The relationship between Movies and Television_show is many to many because the Peoples table is a child table for both tables.
