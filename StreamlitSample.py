
import streamlit as st
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Title
st.title('Simple Streamlit App')

# Header
st.header('This is a header')

# Subheader
st.subheader('This is a subheader')

# Text
st.text('This is some text.')

# Markdown
st.markdown('**This** is markdown.')

# Displaying data
st.write('Displaying a DataFrame:')
df = pd.DataFrame({
    'Column 1': [1, 2, 3, 4],
    'Column 2': [10, 20, 30, 40]
})
st.write(df)

# User input
user_input = st.text_input('Enter some text:', 'Type here...')
st.write('You entered:', user_input)

# Slider
number = st.slider('Select a number', 0, 100, 50)
st.write('You selected:', number)

# Button
if st.button('Click me'):
    st.write('Button clicked!')

# Plotting data
data = np.random.randn(100)
fig, ax = plt.subplots()
ax.hist(data, bins=20)
st.pyplot(fig)