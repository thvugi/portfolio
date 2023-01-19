import 'package:flutter/material.dart';
import 'package:version_2/pages/project1.dart';
import 'package:version_2/pages/project2.dart';
import 'package:version_2/pages/project3.dart';
import 'package:version_2/pages/project4.dart';
import 'package:version_2/pages/project5.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:version_2/responsive/project_interactive.dart';

class ProjectsPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Projects',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    height: 2,
                    color: Colors.white),
              ),
            ),
            AspectRatio(
              aspectRatio: 7 / 8,
              child: PageView(controller: _controller, children: const [
                InteractiveProject(
                    "etl.png",
                    "Twitter and Amazon Machine Learning and ETL",
                    "Twitter`s API was used to scrape tweets from Ryan Reynolds into a csv file and from an Amazon book review data set, beautiful soup API scraped the reviews of data science books. For the book reviews, an analysis was done to show relationships between price and average review, price and number of pages, using k-means to cluster the most important words from a TFID vectorization of the data science book titles, and finally using a Bert Extractive model to read the book reviews and summarize into a shorter paragraph. Finally, an AWS EC2 machine was deployed to run Apache Airflow and procedures were written to run the Twitter and Amazon scraping code. All the data was then stored in an S3 bucket.",
                    "https://github.com/thvugi/ETL_Airflow"),
                InteractiveProject(
                    "covid.jpg",
                    "COVID Data Analysis and Visualization",
                    "Imported COVID-19 data into personal Postgres database to query and create tables for visualization. Used skills such as ordering, grouping, joining, CTE’s, temp tables, and views to store visualization data. After analysis was done, the data was exported into Tableau to make a dashboard visualizing the rate of which COVID was spreading, the infected count by country, and various other statistics.",
                    "https://github.com/thvugi/covid_data_analysis"),
                InteractiveProject(
                  "clean.png",
                  "Housing Data Cleaning",
                  "From a sample data set of houses that were sold in Tennessee, the data was cleaned for duplicate and null items and for information that wasn’t necessary. Long string address were concatenated into separate items to differentiate between address, city, state, and zip code. Changed all Yes and No entries to be Yes No since there were items that were “y”, “n”, “no”, “yes”, etc.",
                  "https://github.com/thvugi/housing_data_cleaning",
                ),
                InteractiveProject("books.jpeg", "", "Click to Learn More!",
                    "https://github.com/thvugi/")
              ]),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(
                  activeDotColor: Color.fromARGB(255, 99, 21, 233),
                  dotColor: Color.fromARGB(255, 159, 155, 155)),
            )
          ],
        ));
  }
}
///https://github.com/thvugi/ETL_Airflow