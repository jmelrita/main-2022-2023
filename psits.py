from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service

chrome_options = Options()
chrome_options.add_experimental_option("detach", True)
driver = webdriver.Chrome(options=chrome_options)
driver.get("http://203.177.71.218:5000/PSITS@Register")
driver.maximize_window()


username = driver.find_element(by=By.NAME, value="idnum")
username.send_keys("19920511")

fname = driver.find_element(by=By.NAME, value="firstname")
fname.send_keys("jun mel")

rfid = driver.find_element(by=By.NAME, value="rfid")
rfid.send_keys("123456")

lname = driver.find_element(by=By.NAME, value="lastname")
lname.send_keys("rita")

course = driver.find_element(by=By.NAME, value="course")
course.send_keys("bsit")

year = driver.find_element(by=By.NAME, value="year")
year.send_keys("3")

email = driver.find_element(by=By.NAME, value="email")
email.send_keys("jmelrita00@gmail.com")

pword = driver.find_element(by=By.NAME, value="password")
pword.send_keys("1234567890")

confirm = driver.find_element(by=By.NAME, value="confirm")
confirm.send_keys("1234567890")




