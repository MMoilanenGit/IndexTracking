
# coding: utf-8

# In[ ]:


import yfinance as yf
import pandas as pd


bank_daily = yf.download("IAT TFC USB PNC FRC FITB SIVB MTB RF KEY CFG", start="2005-01-01", end="2020-10-31")

bank_daily.to_csv("banks012005102020")

