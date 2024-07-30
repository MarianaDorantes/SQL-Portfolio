<center>
    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/images/SN_web_lightmode.png" width="300" alt="cognitiveclass.ai logo">
</center>

<h1 align=center><font size = 5>Assignment: Notebook for Graded Assessment</font></h1>


# Introduction

Using this Python notebook you will:

1.  Understand three Chicago datasets
2.  Load the three datasets into three tables in a SQLIte database
3.  Execute SQL queries to answer assignment questions


## Understand the datasets

To complete the assignment problems in this notebook you will be using three datasets that are available on the city of Chicago's Data Portal:

1.  <a href="https://data.cityofchicago.org/Health-Human-Services/Census-Data-Selected-socioeconomic-indicators-in-C/kn9c-c2s2?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01">Socioeconomic Indicators in Chicago</a>
2.  <a href="https://data.cityofchicago.org/Education/Chicago-Public-Schools-Progress-Report-Cards-2011-/9xs2-f89t?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01">Chicago Public Schools</a>
3.  <a href="https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01">Chicago Crime Data</a>

### 1. Socioeconomic Indicators in Chicago

This dataset contains a selection of six socioeconomic indicators of public health significance and a “hardship index,” for each Chicago community area, for the years 2008 – 2012.

A detailed description of this dataset and the original dataset can be obtained from the Chicago Data Portal at:

[https://data.cityofchicago.org/Health-Human-Services/Census-Data-Selected-socioeconomic-indicators-in-C/kn9c-c2s2](https://data.cityofchicago.org/Health-Human-Services/Census-Data-Selected-socioeconomic-indicators-in-C/kn9c-c2s2?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01&cm_mmc=Email_Newsletter-\_-Developer_Ed%2BTech-\_-WW_WW-\_-SkillsNetwork-Courses-IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork-20127838&cm_mmca1=000026UJ&cm_mmca2=10006555&cm_mmca3=M12345678&cvosrc=email.Newsletter.M12345678&cvo_campaign=000026UJ)

### 2. Chicago Public Schools

This dataset shows all school level performance data used to create CPS School Report Cards for the 2011-2012 school year. This dataset is provided by the city of Chicago's Data Portal.

A detailed description of this dataset and the original dataset can be obtained from the Chicago Data Portal at:

[https://data.cityofchicago.org/Education/Chicago-Public-Schools-Progress-Report-Cards-2011-/9xs2-f89t](https://data.cityofchicago.org/Education/Chicago-Public-Schools-Progress-Report-Cards-2011-/9xs2-f89t?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01&cm_mmc=Email_Newsletter-\_-Developer_Ed%2BTech-\_-WW_WW-\_-SkillsNetwork-Courses-IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork-20127838&cm_mmca1=000026UJ&cm_mmca2=10006555&cm_mmca3=M12345678&cvosrc=email.Newsletter.M12345678&cvo_campaign=000026UJ)

### 3. Chicago Crime Data

This dataset reflects reported incidents of crime (with the exception of murders where data exists for each victim) that occurred in the City of Chicago from 2001 to present, minus the most recent seven days.

A detailed description of this dataset and the original dataset can be obtained from the Chicago Data Portal at:

[https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2](https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01&cm_mmc=Email_Newsletter-\_-Developer_Ed%2BTech-\_-WW_WW-\_-SkillsNetwork-Courses-IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork-20127838&cm_mmca1=000026UJ&cm_mmca2=10006555&cm_mmca3=M12345678&cvosrc=email.Newsletter.M12345678&cvo_campaign=000026UJ)


### Download the datasets

This assignment requires you to have these three tables populated with a subset of the whole datasets.

In many cases the dataset to be analyzed is available as a .CSV (comma separated values) file, perhaps on the internet. 

Use the links below to read the data files using the Pandas library. 

* Chicago Census Data

https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoCensusData.csv?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01

* Chicago Public Schools

https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoPublicSchools.csv?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01

* Chicago Crime Data

https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoCrimeData.csv?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01

**NOTE:** Ensure you use the datasets available on the links above instead of directly from the Chicago Data Portal. The versions linked here are subsets of the original datasets and have some of the column names modified to be more database friendly which will make it easier to complete this assignment.


### Store the datasets in database tables

To analyze the data using SQL, it first needs to be loaded into SQLite DB.
We will create three tables in as under:

1.  **CENSUS_DATA**
2.  **CHICAGO_PUBLIC_SCHOOLS**
3.  **CHICAGO_CRIME_DATA**


Load the `pandas` and `sqlite3` libraries and establish a connection to `FinalDB.db`


1. First, load the SQL extension and establish a connection with the database.


```python
%load_ext sql
```


```python
import csv, sqlite3

con = sqlite3.connect("FinalDB.db")
cur = con.cursor()
!pip install -q pandas==1.1.5
```

2. Load the SQL magic module


```python
%sql sqlite:///FinalDB.db
```

3. Use `Pandas` to load the data available in the links above to dataframes. Use these dataframes to load data on to the database `FinalDB.db` as required tables.



```python
import pandas
```


```python
# First table:

df = pandas.read_csv('https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoCensusData.csv?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01')
df.to_sql("CENSUS_DATA", con, if_exists='replace', index=False,method="multi")
```


    ---------------------------------------------------------------------------

    OperationalError                          Traceback (most recent call last)

    /tmp/ipykernel_1376/4074135442.py in <module>
          2 
          3 df = pandas.read_csv('https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoCensusData.csv?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01')
    ----> 4 df.to_sql("CENSUS_DATA", con, if_exists='replace', index=False,method="multi")
    

    ~/conda/envs/python/lib/python3.7/site-packages/pandas/core/generic.py in to_sql(self, name, con, schema, if_exists, index, index_label, chunksize, dtype, method)
       2613             chunksize=chunksize,
       2614             dtype=dtype,
    -> 2615             method=method,
       2616         )
       2617 


    ~/conda/envs/python/lib/python3.7/site-packages/pandas/io/sql.py in to_sql(frame, name, con, schema, if_exists, index, index_label, chunksize, dtype, method)
        596         chunksize=chunksize,
        597         dtype=dtype,
    --> 598         method=method,
        599     )
        600 


    ~/conda/envs/python/lib/python3.7/site-packages/pandas/io/sql.py in to_sql(self, frame, name, if_exists, index, index_label, schema, chunksize, dtype, method)
       1825             dtype=dtype,
       1826         )
    -> 1827         table.create()
       1828         table.insert(chunksize, method)
       1829 


    ~/conda/envs/python/lib/python3.7/site-packages/pandas/io/sql.py in create(self)
        730                 raise ValueError(f"'{self.if_exists}' is not valid for if_exists")
        731         else:
    --> 732             self._execute_create()
        733 
        734     def _execute_insert(self, conn, keys, data_iter):


    ~/conda/envs/python/lib/python3.7/site-packages/pandas/io/sql.py in _execute_create(self)
       1530         with self.pd_sql.run_transaction() as conn:
       1531             for stmt in self.table:
    -> 1532                 conn.execute(stmt)
       1533 
       1534     def insert_statement(self, *, num_rows):


    OperationalError: table "CENSUS_DATA" already exists



```python
# Second table:

df = pandas.read_csv('https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoPublicSchools.csv?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01')
df.to_sql("CHICAGO_PUBLIC_SCHOOLS", con, if_exists='replace', index=False,method="multi")
```

    /home/jupyterlab/conda/envs/python/lib/python3.7/site-packages/pandas/core/generic.py:2615: UserWarning: The spaces in these column names will not be changed. In pandas versions < 0.14, spaces were converted to underscores.
      method=method,



```python
# Third table:

df = pandas.read_csv('https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoCrimeData.csv?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01')
df.to_sql("CHICAGO_CRIME_DATA", con, if_exists='replace', index=False,method="multi")
```

4. Establish a connection between SQL magic module and the database `FinalDB.db`

5. Verify that the table creation was successful by making a basic query like:


```python
%sql SELECT * FROM CENSUS_DATA limit 5;
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NUMBER</th>
            <th>COMMUNITY_AREA_NAME</th>
            <th>PERCENT_OF_HOUSING_CROWDED</th>
            <th>PERCENT_HOUSEHOLDS_BELOW_POVERTY</th>
            <th>PERCENT_AGED_16__UNEMPLOYED</th>
            <th>PERCENT_AGED_25__WITHOUT_HIGH_SCHOOL_DIPLOMA</th>
            <th>PERCENT_AGED_UNDER_18_OR_OVER_64</th>
            <th>PER_CAPITA_INCOME</th>
            <th>HARDSHIP_INDEX</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1.0</td>
            <td>Rogers Park</td>
            <td>7.7</td>
            <td>23.6</td>
            <td>8.7</td>
            <td>18.2</td>
            <td>27.5</td>
            <td>23939</td>
            <td>39.0</td>
        </tr>
        <tr>
            <td>2.0</td>
            <td>West Ridge</td>
            <td>7.8</td>
            <td>17.2</td>
            <td>8.8</td>
            <td>20.8</td>
            <td>38.5</td>
            <td>23040</td>
            <td>46.0</td>
        </tr>
        <tr>
            <td>3.0</td>
            <td>Uptown</td>
            <td>3.8</td>
            <td>24.0</td>
            <td>8.9</td>
            <td>11.8</td>
            <td>22.2</td>
            <td>35787</td>
            <td>20.0</td>
        </tr>
        <tr>
            <td>4.0</td>
            <td>Lincoln Square</td>
            <td>3.4</td>
            <td>10.9</td>
            <td>8.2</td>
            <td>13.4</td>
            <td>25.5</td>
            <td>37524</td>
            <td>17.0</td>
        </tr>
        <tr>
            <td>5.0</td>
            <td>North Center</td>
            <td>0.3</td>
            <td>7.5</td>
            <td>5.2</td>
            <td>4.5</td>
            <td>26.2</td>
            <td>57123</td>
            <td>6.0</td>
        </tr>
    </tbody>
</table>




```python
%sql SELECT * FROM CHICAGO_PUBLIC_SCHOOLS limit 5;
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>School_ID</th>
            <th>NAME_OF_SCHOOL</th>
            <th>Elementary, Middle, or High School</th>
            <th>Street_Address</th>
            <th>City</th>
            <th>State</th>
            <th>ZIP_Code</th>
            <th>Phone_Number</th>
            <th>Link</th>
            <th>Network_Manager</th>
            <th>Collaborative_Name</th>
            <th>Adequate_Yearly_Progress_Made_</th>
            <th>Track_Schedule</th>
            <th>CPS_Performance_Policy_Status</th>
            <th>CPS_Performance_Policy_Level</th>
            <th>HEALTHY_SCHOOL_CERTIFIED</th>
            <th>Safety_Icon</th>
            <th>SAFETY_SCORE</th>
            <th>Family_Involvement_Icon</th>
            <th>Family_Involvement_Score</th>
            <th>Environment_Icon</th>
            <th>Environment_Score</th>
            <th>Instruction_Icon</th>
            <th>Instruction_Score</th>
            <th>Leaders_Icon</th>
            <th>Leaders_Score</th>
            <th>Teachers_Icon</th>
            <th>Teachers_Score</th>
            <th>Parent_Engagement_Icon</th>
            <th>Parent_Engagement_Score</th>
            <th>Parent_Environment_Icon</th>
            <th>Parent_Environment_Score</th>
            <th>AVERAGE_STUDENT_ATTENDANCE</th>
            <th>Rate_of_Misconducts__per_100_students_</th>
            <th>Average_Teacher_Attendance</th>
            <th>Individualized_Education_Program_Compliance_Rate</th>
            <th>Pk_2_Literacy__</th>
            <th>Pk_2_Math__</th>
            <th>Gr3_5_Grade_Level_Math__</th>
            <th>Gr3_5_Grade_Level_Read__</th>
            <th>Gr3_5_Keep_Pace_Read__</th>
            <th>Gr3_5_Keep_Pace_Math__</th>
            <th>Gr6_8_Grade_Level_Math__</th>
            <th>Gr6_8_Grade_Level_Read__</th>
            <th>Gr6_8_Keep_Pace_Math_</th>
            <th>Gr6_8_Keep_Pace_Read__</th>
            <th>Gr_8_Explore_Math__</th>
            <th>Gr_8_Explore_Read__</th>
            <th>ISAT_Exceeding_Math__</th>
            <th>ISAT_Exceeding_Reading__</th>
            <th>ISAT_Value_Add_Math</th>
            <th>ISAT_Value_Add_Read</th>
            <th>ISAT_Value_Add_Color_Math</th>
            <th>ISAT_Value_Add_Color_Read</th>
            <th>Students_Taking__Algebra__</th>
            <th>Students_Passing__Algebra__</th>
            <th>9th Grade EXPLORE (2009)</th>
            <th>9th Grade EXPLORE (2010)</th>
            <th>10th Grade PLAN (2009)</th>
            <th>10th Grade PLAN (2010)</th>
            <th>Net_Change_EXPLORE_and_PLAN</th>
            <th>11th Grade Average ACT (2011)</th>
            <th>Net_Change_PLAN_and_ACT</th>
            <th>College_Eligibility__</th>
            <th>Graduation_Rate__</th>
            <th>College_Enrollment_Rate__</th>
            <th>COLLEGE_ENROLLMENT</th>
            <th>General_Services_Route</th>
            <th>Freshman_on_Track_Rate__</th>
            <th>X_COORDINATE</th>
            <th>Y_COORDINATE</th>
            <th>Latitude</th>
            <th>Longitude</th>
            <th>COMMUNITY_AREA_NUMBER</th>
            <th>COMMUNITY_AREA_NAME</th>
            <th>Ward</th>
            <th>Police_District</th>
            <th>Location</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>610038</td>
            <td>Abraham Lincoln Elementary School</td>
            <td>ES</td>
            <td>615 W Kemper Pl</td>
            <td>Chicago</td>
            <td>IL</td>
            <td>60614</td>
            <td>(773) 534-5720</td>
            <td>http://schoolreports.cps.edu/SchoolProgressReport_Eng/Spring2011Eng_610038.pdf</td>
            <td>Fullerton Elementary Network</td>
            <td>NORTH-NORTHWEST SIDE COLLABORATIVE</td>
            <td>No</td>
            <td>Standard</td>
            <td>Not on Probation</td>
            <td>Level 1</td>
            <td>Yes</td>
            <td>Very Strong</td>
            <td>99.0</td>
            <td>Very Strong</td>
            <td>99</td>
            <td>Strong</td>
            <td>74.0</td>
            <td>Strong</td>
            <td>66.0</td>
            <td>Weak</td>
            <td>65</td>
            <td>Strong</td>
            <td>70</td>
            <td>Strong</td>
            <td>56</td>
            <td>Average</td>
            <td>47</td>
            <td>96.00%</td>
            <td>2.0</td>
            <td>96.40%</td>
            <td>95.80%</td>
            <td>80.1</td>
            <td>43.3</td>
            <td>89.6</td>
            <td>84.9</td>
            <td>60.7</td>
            <td>62.6</td>
            <td>81.9</td>
            <td>85.2</td>
            <td>52</td>
            <td>62.4</td>
            <td>66.3</td>
            <td>77.9</td>
            <td>69.7</td>
            <td>64.4</td>
            <td>0.2</td>
            <td>0.9</td>
            <td>Yellow</td>
            <td>Green</td>
            <td>67.1</td>
            <td>54.5</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>813</td>
            <td>33</td>
            <td>NDA</td>
            <td>1171699.4579999999</td>
            <td>1915829.428</td>
            <td>41.92449696</td>
            <td>-87.64452163</td>
            <td>7</td>
            <td>LINCOLN PARK</td>
            <td>43</td>
            <td>18</td>
            <td>(41.92449696, -87.64452163)</td>
        </tr>
        <tr>
            <td>610281</td>
            <td>Adam Clayton Powell Paideia Community Academy Elementary School</td>
            <td>ES</td>
            <td>7511 S South Shore Dr</td>
            <td>Chicago</td>
            <td>IL</td>
            <td>60649</td>
            <td>(773) 535-6650</td>
            <td>http://schoolreports.cps.edu/SchoolProgressReport_Eng/Spring2011Eng_610281.pdf</td>
            <td>Skyway Elementary Network</td>
            <td>SOUTH SIDE COLLABORATIVE</td>
            <td>No</td>
            <td>Track_E</td>
            <td>Not on Probation</td>
            <td>Level 1</td>
            <td>No</td>
            <td>Average</td>
            <td>54.0</td>
            <td>Strong</td>
            <td>66</td>
            <td>Strong</td>
            <td>74.0</td>
            <td>Very Strong</td>
            <td>84.0</td>
            <td>Weak</td>
            <td>63</td>
            <td>Strong</td>
            <td>76</td>
            <td>Weak</td>
            <td>46</td>
            <td>Average</td>
            <td>50</td>
            <td>95.60%</td>
            <td>15.7</td>
            <td>95.30%</td>
            <td>100.00%</td>
            <td>62.4</td>
            <td>51.7</td>
            <td>21.9</td>
            <td>15.1</td>
            <td>29</td>
            <td>42.8</td>
            <td>38.5</td>
            <td>27.4</td>
            <td>44.8</td>
            <td>42.7</td>
            <td>14.1</td>
            <td>34.4</td>
            <td>16.8</td>
            <td>16.5</td>
            <td>0.7</td>
            <td>1.4</td>
            <td>Green</td>
            <td>Green</td>
            <td>17.2</td>
            <td>27.3</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>521</td>
            <td>46</td>
            <td>NDA</td>
            <td>1196129.985</td>
            <td>1856209.466</td>
            <td>41.76032435</td>
            <td>-87.55673627</td>
            <td>43</td>
            <td>SOUTH SHORE</td>
            <td>7</td>
            <td>4</td>
            <td>(41.76032435, -87.55673627)</td>
        </tr>
        <tr>
            <td>610185</td>
            <td>Adlai E Stevenson Elementary School</td>
            <td>ES</td>
            <td>8010 S Kostner Ave</td>
            <td>Chicago</td>
            <td>IL</td>
            <td>60652</td>
            <td>(773) 535-2280</td>
            <td>http://schoolreports.cps.edu/SchoolProgressReport_Eng/Spring2011Eng_610185.pdf</td>
            <td>Midway Elementary Network</td>
            <td>SOUTHWEST SIDE COLLABORATIVE</td>
            <td>No</td>
            <td>Standard</td>
            <td>Not on Probation</td>
            <td>Level 2</td>
            <td>No</td>
            <td>Strong</td>
            <td>61.0</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>Average</td>
            <td>50.0</td>
            <td>Weak</td>
            <td>36.0</td>
            <td>Weak</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>Average</td>
            <td>47</td>
            <td>Weak</td>
            <td>41</td>
            <td>95.70%</td>
            <td>2.3</td>
            <td>94.70%</td>
            <td>98.30%</td>
            <td>53.7</td>
            <td>26.6</td>
            <td>38.3</td>
            <td>34.7</td>
            <td>43.7</td>
            <td>57.3</td>
            <td>48.8</td>
            <td>39.2</td>
            <td>46.8</td>
            <td>44</td>
            <td>7.5</td>
            <td>21.9</td>
            <td>18.3</td>
            <td>15.5</td>
            <td>-0.9</td>
            <td>-1.0</td>
            <td>Red</td>
            <td>Red</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>1324</td>
            <td>44</td>
            <td>NDA</td>
            <td>1148427.165</td>
            <td>1851012.215</td>
            <td>41.74711093</td>
            <td>-87.73170248</td>
            <td>70</td>
            <td>ASHBURN</td>
            <td>13</td>
            <td>8</td>
            <td>(41.74711093, -87.73170248)</td>
        </tr>
        <tr>
            <td>609993</td>
            <td>Agustin Lara Elementary Academy</td>
            <td>ES</td>
            <td>4619 S Wolcott Ave</td>
            <td>Chicago</td>
            <td>IL</td>
            <td>60609</td>
            <td>(773) 535-4389</td>
            <td>http://schoolreports.cps.edu/SchoolProgressReport_Eng/Spring2011Eng_609993.pdf</td>
            <td>Pershing Elementary Network</td>
            <td>SOUTHWEST SIDE COLLABORATIVE</td>
            <td>No</td>
            <td>Track_E</td>
            <td>Not on Probation</td>
            <td>Level 1</td>
            <td>No</td>
            <td>Average</td>
            <td>56.0</td>
            <td>Average</td>
            <td>44</td>
            <td>Average</td>
            <td>45.0</td>
            <td>Weak</td>
            <td>37.0</td>
            <td>Weak</td>
            <td>65</td>
            <td>Average</td>
            <td>48</td>
            <td>Average</td>
            <td>53</td>
            <td>Strong</td>
            <td>58</td>
            <td>95.50%</td>
            <td>10.4</td>
            <td>95.80%</td>
            <td>100.00%</td>
            <td>76.9</td>
            <td>NDA</td>
            <td>26</td>
            <td>24.7</td>
            <td>61.8</td>
            <td>49.7</td>
            <td>39.2</td>
            <td>27.2</td>
            <td>69.7</td>
            <td>60.6</td>
            <td>9.1</td>
            <td>18.2</td>
            <td>11.1</td>
            <td>9.6</td>
            <td>0.9</td>
            <td>2.4</td>
            <td>Green</td>
            <td>Green</td>
            <td>42.9</td>
            <td>25</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>556</td>
            <td>42</td>
            <td>NDA</td>
            <td>1164504.29</td>
            <td>1873959.199</td>
            <td>41.8097569</td>
            <td>-87.6721446</td>
            <td>61</td>
            <td>NEW CITY</td>
            <td>20</td>
            <td>9</td>
            <td>(41.8097569, -87.6721446)</td>
        </tr>
        <tr>
            <td>610513</td>
            <td>Air Force Academy High School</td>
            <td>HS</td>
            <td>3630 S Wells St</td>
            <td>Chicago</td>
            <td>IL</td>
            <td>60609</td>
            <td>(773) 535-1590</td>
            <td>http://schoolreports.cps.edu/SchoolProgressReport_Eng/Spring2011Eng_610513.pdf</td>
            <td>Southwest Side High School Network</td>
            <td>SOUTHWEST SIDE COLLABORATIVE</td>
            <td>NDA</td>
            <td>Standard</td>
            <td>Not on Probation</td>
            <td>Not Enough Data</td>
            <td>Yes</td>
            <td>Average</td>
            <td>49.0</td>
            <td>Strong</td>
            <td>60</td>
            <td>Strong</td>
            <td>60.0</td>
            <td>Average</td>
            <td>55.0</td>
            <td>Weak</td>
            <td>45</td>
            <td>Average</td>
            <td>54</td>
            <td>Average</td>
            <td>53</td>
            <td>Average</td>
            <td>49</td>
            <td>93.30%</td>
            <td>15.6</td>
            <td>96.90%</td>
            <td>100.00%</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>None</td>
            <td>None</td>
            <td>None</td>
            <td>None</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>14.6</td>
            <td>14.8</td>
            <td>NDA</td>
            <td>16</td>
            <td>1.4</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>NDA</td>
            <td>302</td>
            <td>40</td>
            <td>91.8</td>
            <td>1175177.622</td>
            <td>1880745.126</td>
            <td>41.82814609</td>
            <td>-87.63279369</td>
            <td>34</td>
            <td>ARMOUR SQUARE</td>
            <td>11</td>
            <td>9</td>
            <td>(41.82814609, -87.63279369)</td>
        </tr>
    </tbody>
</table>




```python
%sql SELECT * FROM CHICAGO_CRIME_DATA limit 5;
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>CASE_NUMBER</th>
            <th>DATE</th>
            <th>BLOCK</th>
            <th>IUCR</th>
            <th>PRIMARY_TYPE</th>
            <th>DESCRIPTION</th>
            <th>LOCATION_DESCRIPTION</th>
            <th>ARREST</th>
            <th>DOMESTIC</th>
            <th>BEAT</th>
            <th>DISTRICT</th>
            <th>WARD</th>
            <th>COMMUNITY_AREA_NUMBER</th>
            <th>FBICODE</th>
            <th>X_COORDINATE</th>
            <th>Y_COORDINATE</th>
            <th>YEAR</th>
            <th>LATITUDE</th>
            <th>LONGITUDE</th>
            <th>LOCATION</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>3512276</td>
            <td>HK587712</td>
            <td>2004-08-28</td>
            <td>047XX S KEDZIE AVE</td>
            <td>890</td>
            <td>THEFT</td>
            <td>FROM BUILDING</td>
            <td>SMALL RETAIL STORE</td>
            <td>0</td>
            <td>0</td>
            <td>911</td>
            <td>9</td>
            <td>14.0</td>
            <td>58.0</td>
            <td>6</td>
            <td>1155838.0</td>
            <td>1873050.0</td>
            <td>2004</td>
            <td>41.807440500000006</td>
            <td>-87.70395585</td>
            <td>(41.8074405, -87.703955849)</td>
        </tr>
        <tr>
            <td>3406613</td>
            <td>HK456306</td>
            <td>2004-06-26</td>
            <td>009XX N CENTRAL PARK AVE</td>
            <td>820</td>
            <td>THEFT</td>
            <td>$500 AND UNDER</td>
            <td>OTHER</td>
            <td>0</td>
            <td>0</td>
            <td>1112</td>
            <td>11</td>
            <td>27.0</td>
            <td>23.0</td>
            <td>6</td>
            <td>1152206.0</td>
            <td>1906127.0</td>
            <td>2004</td>
            <td>41.89827996</td>
            <td>-87.71640551</td>
            <td>(41.898279962, -87.716405505)</td>
        </tr>
        <tr>
            <td>8002131</td>
            <td>HT233595</td>
            <td>2011-04-04</td>
            <td>043XX S WABASH AVE</td>
            <td>820</td>
            <td>THEFT</td>
            <td>$500 AND UNDER</td>
            <td>NURSING HOME/RETIREMENT HOME</td>
            <td>0</td>
            <td>0</td>
            <td>221</td>
            <td>2</td>
            <td>3.0</td>
            <td>38.0</td>
            <td>6</td>
            <td>1177436.0</td>
            <td>1876313.0</td>
            <td>2011</td>
            <td>41.81593313</td>
            <td>-87.62464213</td>
            <td>(41.815933131, -87.624642127)</td>
        </tr>
        <tr>
            <td>7903289</td>
            <td>HT133522</td>
            <td>2010-12-30</td>
            <td>083XX S KINGSTON AVE</td>
            <td>840</td>
            <td>THEFT</td>
            <td>FINANCIAL ID THEFT: OVER $300</td>
            <td>RESIDENCE</td>
            <td>0</td>
            <td>0</td>
            <td>423</td>
            <td>4</td>
            <td>7.0</td>
            <td>46.0</td>
            <td>6</td>
            <td>1194622.0</td>
            <td>1850125.0</td>
            <td>2010</td>
            <td>41.74366532</td>
            <td>-87.56246276</td>
            <td>(41.743665322, -87.562462756)</td>
        </tr>
        <tr>
            <td>10402076</td>
            <td>HZ138551</td>
            <td>2016-02-02</td>
            <td>033XX W 66TH ST</td>
            <td>820</td>
            <td>THEFT</td>
            <td>$500 AND UNDER</td>
            <td>ALLEY</td>
            <td>0</td>
            <td>0</td>
            <td>831</td>
            <td>8</td>
            <td>15.0</td>
            <td>66.0</td>
            <td>6</td>
            <td>1155240.0</td>
            <td>1860661.0</td>
            <td>2016</td>
            <td>41.773455299999995</td>
            <td>-87.70648047</td>
            <td>(41.773455295, -87.706480471)</td>
        </tr>
    </tbody>
</table>



You can now proceed to the the following questions. Please note that a graded assignment will follow this lab and there will be a question on each of the problems stated below. It can be from the answer you received or the code you write for this problem. Therefore, please keep a note of both your codes as well as the response you generate.


## Problems

Now write and execute SQL queries to solve assignment problems

### Problem 1

##### Find the total number of crimes recorded in the CRIME table.



```python
%sql SELECT COUNT(*) FROM CHICAGO_CRIME_DATA
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COUNT(*)</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>533</td>
        </tr>
    </tbody>
</table>



### Problem 2

##### List community area names and numbers with per capita income less than 11000.



```python
%sql SELECT COMMUNITY_AREA_NUMBER, COMMUNITY_AREA_NAME FROM CENSUS_DATA WHERE PER_CAPITA_INCOME < 11000
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NUMBER</th>
            <th>COMMUNITY_AREA_NAME</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>26.0</td>
            <td>West Garfield Park</td>
        </tr>
        <tr>
            <td>30.0</td>
            <td>South Lawndale</td>
        </tr>
        <tr>
            <td>37.0</td>
            <td>Fuller Park</td>
        </tr>
        <tr>
            <td>54.0</td>
            <td>Riverdale</td>
        </tr>
    </tbody>
</table>



### Problem 3

##### List all case numbers for crimes involving minors?(children are not considered minors for the purposes of crime analysis) 



```python
%sql SELECT * FROM CHICAGO_CRIME_DATA WHERE DESCRIPTION LIKE "%CHILD%"
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>CASE_NUMBER</th>
            <th>DATE</th>
            <th>BLOCK</th>
            <th>IUCR</th>
            <th>PRIMARY_TYPE</th>
            <th>DESCRIPTION</th>
            <th>LOCATION_DESCRIPTION</th>
            <th>ARREST</th>
            <th>DOMESTIC</th>
            <th>BEAT</th>
            <th>DISTRICT</th>
            <th>WARD</th>
            <th>COMMUNITY_AREA_NUMBER</th>
            <th>FBICODE</th>
            <th>X_COORDINATE</th>
            <th>Y_COORDINATE</th>
            <th>YEAR</th>
            <th>LATITUDE</th>
            <th>LONGITUDE</th>
            <th>LOCATION</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>5766654</td>
            <td>HN567387</td>
            <td>2007-09-02</td>
            <td>026XX W BELMONT AVE</td>
            <td>1754</td>
            <td>OFFENSE INVOLVING CHILDREN</td>
            <td>AGG SEX ASSLT OF CHILD FAM MBR</td>
            <td>CHURCH/SYNAGOGUE/PLACE OF WORSHIP</td>
            <td>0</td>
            <td>0</td>
            <td>1411</td>
            <td>14</td>
            <td>1.0</td>
            <td>21.0</td>
            <td>2</td>
            <td>1158166.0</td>
            <td>1921161.0</td>
            <td>2007</td>
            <td>41.93941471</td>
            <td>-87.69410322</td>
            <td>(41.939414712, -87.694103222)</td>
        </tr>
        <tr>
            <td>6986273</td>
            <td>HR391350</td>
            <td>2009-06-23</td>
            <td>015XX S KOLIN AVE</td>
            <td>1753</td>
            <td>OFFENSE INVOLVING CHILDREN</td>
            <td>SEX ASSLT OF CHILD BY FAM MBR</td>
            <td>APARTMENT</td>
            <td>0</td>
            <td>1</td>
            <td>1012</td>
            <td>10</td>
            <td>24.0</td>
            <td>29.0</td>
            <td>2</td>
            <td>1147638.0</td>
            <td>1892092.0</td>
            <td>2009</td>
            <td>41.85985521</td>
            <td>-87.73354382</td>
            <td>(41.859855212, -87.733543816)</td>
        </tr>
        <tr>
            <td>5276766</td>
            <td>HN144152</td>
            <td>2007-01-26</td>
            <td>050XX W VAN BUREN ST</td>
            <td>1792</td>
            <td>KIDNAPPING</td>
            <td>CHILD ABDUCTION/STRANGER</td>
            <td>STREET</td>
            <td>0</td>
            <td>0</td>
            <td>1533</td>
            <td>15</td>
            <td>29.0</td>
            <td>25.0</td>
            <td>20</td>
            <td>1143050.0</td>
            <td>1897546.0</td>
            <td>2007</td>
            <td>41.87490841</td>
            <td>-87.75024931</td>
            <td>(41.874908413, -87.750249307)</td>
        </tr>
    </tbody>
</table>



### Problem 4

##### List all kidnapping crimes involving a child?



```python
%sql SELECT * FROM CHICAGO_CRIME_DATA WHERE PRIMARY_TYPE = "KIDNAPPING"
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>CASE_NUMBER</th>
            <th>DATE</th>
            <th>BLOCK</th>
            <th>IUCR</th>
            <th>PRIMARY_TYPE</th>
            <th>DESCRIPTION</th>
            <th>LOCATION_DESCRIPTION</th>
            <th>ARREST</th>
            <th>DOMESTIC</th>
            <th>BEAT</th>
            <th>DISTRICT</th>
            <th>WARD</th>
            <th>COMMUNITY_AREA_NUMBER</th>
            <th>FBICODE</th>
            <th>X_COORDINATE</th>
            <th>Y_COORDINATE</th>
            <th>YEAR</th>
            <th>LATITUDE</th>
            <th>LONGITUDE</th>
            <th>LOCATION</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>5276766</td>
            <td>HN144152</td>
            <td>2007-01-26</td>
            <td>050XX W VAN BUREN ST</td>
            <td>1792</td>
            <td>KIDNAPPING</td>
            <td>CHILD ABDUCTION/STRANGER</td>
            <td>STREET</td>
            <td>0</td>
            <td>0</td>
            <td>1533</td>
            <td>15</td>
            <td>29.0</td>
            <td>25.0</td>
            <td>20</td>
            <td>1143050.0</td>
            <td>1897546.0</td>
            <td>2007</td>
            <td>41.87490841</td>
            <td>-87.75024931</td>
            <td>(41.874908413, -87.750249307)</td>
        </tr>
    </tbody>
</table>



### Problem 5

##### List the kind of crimes that were recorded at schools. (No repetitions)



```python
%sql SELECT DISTINCT(PRIMARY_TYPE) FROM CHICAGO_CRIME_DATA WHERE LOCATION_DESCRIPTION LIKE "%SCHOOL%"
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>PRIMARY_TYPE</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>BATTERY</td>
        </tr>
        <tr>
            <td>CRIMINAL DAMAGE</td>
        </tr>
        <tr>
            <td>NARCOTICS</td>
        </tr>
        <tr>
            <td>ASSAULT</td>
        </tr>
        <tr>
            <td>CRIMINAL TRESPASS</td>
        </tr>
        <tr>
            <td>PUBLIC PEACE VIOLATION</td>
        </tr>
    </tbody>
</table>



### Problem 6

##### List the type of schools along with the average safety score for each type.



```python
%sql SELECT "Elementary, Middle, or High School", AVG(SAFETY_SCORE) as AVG_SAFETY_SCORE FROM CHICAGO_PUBLIC_SCHOOLS GROUP BY "Elementary, Middle, or High School"

```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>Elementary, Middle, or High School</th>
            <th>AVG_SAFETY_SCORE</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>ES</td>
            <td>49.52038369304557</td>
        </tr>
        <tr>
            <td>HS</td>
            <td>49.62352941176471</td>
        </tr>
        <tr>
            <td>MS</td>
            <td>48.0</td>
        </tr>
    </tbody>
</table>



### Problem 7

##### List 5 community areas with highest % of households below poverty line



```python
%sql SELECT COMMUNITY_AREA_NAME, PERCENT_HOUSEHOLDS_BELOW_POVERTY FROM CENSUS_DATA ORDER BY PERCENT_HOUSEHOLDS_BELOW_POVERTY DESC LIMIT 5
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NAME</th>
            <th>PERCENT_HOUSEHOLDS_BELOW_POVERTY</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Riverdale</td>
            <td>56.5</td>
        </tr>
        <tr>
            <td>Fuller Park</td>
            <td>51.2</td>
        </tr>
        <tr>
            <td>Englewood</td>
            <td>46.6</td>
        </tr>
        <tr>
            <td>North Lawndale</td>
            <td>43.1</td>
        </tr>
        <tr>
            <td>East Garfield Park</td>
            <td>42.4</td>
        </tr>
    </tbody>
</table>



### Problem 8

##### Which community area is most crime prone? Display the coumminty area number only.



```python
%sql SELECT COMMUNITY_AREA_NUMBER FROM CHICAGO_CRIME_DATA GROUP BY COMMUNITY_AREA_NUMBER ORDER BY COMMUNITY_AREA_NUMBER DESC LIMIT 1 
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NUMBER</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>25.0</td>
        </tr>
    </tbody>
</table>




Double-click **here** for a hint

<!--
Query for the 'community area number' that has most number of incidents
-->


### Problem 9

##### Use a sub-query to find the name of the community area with highest hardship index



```python
%sql SELECT COMMUNITY_AREA_NAME FROM CENSUS_DATA WHERE HARDSHIP_INDEX IN (SELECT MAX(HARDSHIP_INDEX) FROM CENSUS_DATA);
```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NAME</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Riverdale</td>
        </tr>
    </tbody>
</table>



### Problem 10

##### Use a sub-query to determine the Community Area Name with most number of crimes?



```python
%sql SELECT COMMUNITY_AREA_NAME FROM CENSUS_DATA WHERE COMMUNITY_AREA_NUMBER = (SELECT COMMUNITY_AREA_NUMBER FROM CHICAGO_CRIME_DATA GROUP BY COMMUNITY_AREA_NUMBER ORDER BY COUNT(CASE_NUMBER) DESC LIMIT 1);

```

     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NAME</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Austin</td>
        </tr>
    </tbody>
</table>



## Author(s)

<h4> Hima Vasudevan </h4>
<h4> Rav Ahuja </h4>
<h4> Ramesh Sannreddy </h4>

## Contribtuor(s)

<h4> Malika Singla </h4>
<h4>Abhishek Gagneja</h4>
<!--
## Change log

| Date       | Version | Changed by        | Change Description                             |
| ---------- | ------- | ----------------- | ---------------------------------------------- |
|2023-10-18  | 2.6     | Abhishek Gagneja  | Modified instruction set |
| 2022-03-04 | 2.5     | Lakshmi Holla     | Changed markdown.                   |
| 2021-05-19 | 2.4     | Lakshmi Holla     | Updated the question                           |
| 2021-04-30 | 2.3     | Malika Singla     | Updated the libraries                          |
| 2021-01-15 | 2.2     | Rav Ahuja         | Removed problem 11 and fixed changelog         |
| 2020-11-25 | 2.1     | Ramesh Sannareddy | Updated the problem statements, and datasets   |
| 2020-09-05 | 2.0     | Malika Singla     | Moved lab to course repo in GitLab             |
| 2018-07-18 | 1.0     | Rav Ahuja         | Several updates including loading instructions |
| 2018-05-04 | 0.1     | Hima Vasudevan    | Created initial version                        |
-->
## <h3 align="center"> © IBM Corporation 2023. All rights reserved. <h3/>

