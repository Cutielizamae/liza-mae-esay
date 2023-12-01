import calendar

def create_calendar(year):
    cal = calendar.TextCalendar(calendar.SUNDAY)
    print(cal.formatyear(year))

create_calendar(2023)
