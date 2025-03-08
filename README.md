# Attandance
Attandance with single Device

## Project Overview

This **Attandance Management System**  document outlines the core components of the Employee Attendance Management System. The system tracks employee attendance, working hours, and time spent outside the office, while also allowing for configuration of punch settings.

### Key Features and Functionalities Implemented

- **Attandance:** Attendance records are used to monitor employee activities, including their presence in the office and time spent outside. The data is critical for evaluating employee productivity and adherence to schedules.
- **Employee:** The Employee table stores essential details about all employees in the organization.
- **Setting Max Punch:** This feature defines the maximum number of punches allowed per employee in a single day. Configures limits to avoid fraudulent punch-ins. Helps maintain system efficiency by reducing redundant data.
- **Punches:** Punch data records the exact moments employees log their attendance.


### Project Structure

```markdown
HRTest
│
├── Controllers
│   ├── AttandanceController
│   ├── MaxPunchesController
│
├── Data
│   ├── DB
│   ├── ApplicationDbContext
│   ├── DataAccessHelper
│
├── Infrastructure
│   ├── Repositories│   
│
├── Models
├── Views
    
   ```
## Stored Procedure Description: **SP_EmployeeTimeCard**
This stored procedure, SP_EmployeeTimeCard, is designed to calculate and analyze employee attendance data, specifically focusing on working hours and out-of-office intervals. The procedure processes raw punch data for a specific employee and date, calculates time intervals, and categorizes them as either "Office" or "OutOfOffice."


### Workflow

- Fetch Max Punch Range : The maximum allowable interval between **consecutive punches (in seconds)** is fetched from the MaxPunch table using the following query:

```sql
SELECT MaxPunchRange FROM MaxPunch WHERE Id = 1;
```

### Input Data:
The punch data includes multiple entries with the same EmployeeID and Date but with varying PunchTime values.
For example, **IDs 12, 13, 14, and 15** occur within a **3-second** window starting from **10:20:00**. Only one of these punches is retained.

- Filter Punches : A Common Table Expression (CTE) named FilteredPunches retrieves all punches for the given employee and date while calculating the previous punch time using the LAG() function.

**Purpose:** This filters out punches that occur within an invalid timeframe (e.g., below the configured range).

```sql
WHERE 
    PreviousPunch IS NULL 
    OR DATEDIFF(SECOND, PreviousPunch, PunchTime) > @MaxPunchRange

```

<img src="https://github.com/gmbappa/Attandance/blob/main/HRTest/Data/Image/PunchData.png" 
alt="db" width="500" height="400" border="10" />


<img src="https://github.com/gmbappa/Attandance/blob/main/HRTest/Data/Image/PunchData2.png" 
alt="db" width="500" height="400" border="10" />

<img src="https://github.com/gmbappa/Attandance/blob/main/HRTest/Data/Image/PunchData3.png" 
alt="db" width="500" height="400" border="10" />

<img src="https://github.com/gmbappa/Attandance/blob/main/HRTest/Data/Image/PunchData4.png" 
alt="db" width="500" height="400" border="10" />

- Store Distinct Punches : Distinct punches that meet the time range criteria are stored temporarily in a table #DistinctPunches.

**Purpose:** Ensure that only meaningful punches are retained for further processing.


- Pair Consecutive Punches : A second CTE named PairedPunches pairs each punch with the subsequent one using the LEAD() function. This creates "check-in" and "check-out" intervals.

- Interval Calculations : A third CTE named Calculations is used to:

**Calculate the interval (in minutes) between paired punches.**

**Categorize intervals as:**

**"Office":** For intervals where the employee is assumed to be working. 

**"OutOfOffice":** For intervals where the employee is outside the office. 

**"Database Script":**

- HRTest=>Data=> **[TestHR] Script All.sql**
- HRTest=>Data=> **TestHR.bak**


