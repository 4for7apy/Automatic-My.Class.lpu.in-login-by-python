#NOTE - line no.12 --("Enter your registration no. ")_
#NOTE - line no.13 --("Enter your password ")_


from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select
import time
driver = webdriver.Chrome()
driver.maximize_window()
driver.get("https://myclass.lpu.in/")

driver.find_element(By.XPATH,"//body/div[2]/div[1]/form[1]/div[6]/input[1]").send_keys("**Your registration no. here**")
driver.find_element(By.XPATH,"//body/div[2]/div[1]/form[1]/div[6]/input[2]").send_keys("**Enter your password here**")
time.sleep(0.5)
driver.find_element(By.XPATH,"/html[1]/body[1]/div[2]/div[1]/form[1]/div[7]/button[1]").click()
time.sleep(0.5)
driver.find_element(By.XPATH,"//a[contains(text(),'Tests')]").click()
time.sleep(0.5)
driver.find_element(By.XPATH,"//a[contains(text(),'Take Test')]").click()
