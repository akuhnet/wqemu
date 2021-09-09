from selenium import webdriver
from selenium.webdriver.chrome.options import Options
chrome_options = Options()
chrome_options.add_argument('--no-sandbox')
chrome_options.add_argument('--disable-dev-shm-usage')
driver = webdriver.Chrome(options=chrome_options)
driver.get("https://www.youtube.com/channel/UC-3M3r3D3UwfpzYTjPYmVfw")
input("Press enter to exit ;)")
