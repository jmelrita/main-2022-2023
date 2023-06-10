from selenium import webdriver
from selenium.webdriver.common.by import By


driver = webdriver.Chrome()
driver.get("https://constrades.herokuapp.com/signin")

driver.implicitly_wait(0.5)
username = driver.find_element(By.CLASS_NAME, "border")
username.send_keys("jmelrita22@gmail.com")

password=driver.find_element(By.XPATH, "//input[@placeholder='Enter your password']")
password.send_keys("1234567890") 


enterbtn=driver.findElement(By.xpath("//*[text()='Sign in']"))

#email = driver.find_element(by=By.NAME, value="reg_email__")
#email.send_keys("09999615706")
#passwd = driver.find_element(by=By.NAME, value="reg_passwd__")
#passwd.send_keys("1234567890")
#bday = driver.find_element(by=By.NAME, value="birthday_month")
#bday.send_keys("Jan")
#bday2 = driver.find_element(by=By.NAME, value="birthday_day")
#bday2.send_keys("15")
#bday3 = driver.find_element(by=By.NAME, value="birthday_year")
#bday3.send_keys("2000")
#driver.find_element(By.XPATH,"//input[@value='2']").click()*/