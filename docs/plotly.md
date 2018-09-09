# Plot.ly Notes 

For full documentation visit [plot.ly](https://plot.ly/python/).

## One-time Setup

Before using plot.ly, follow these steps:

1. [Sign up](https://plot.ly/accounts/login/?action=signup) and create a plot.ly account. Notice that 
you can click on the github logo and use your GitHub credentials to sign up.

2. Create your credentials file:

```bash
pip install plotly
python
>>> import plotly
>>> plotly.tools.set_credentials_file(username='YourName', api_key='YourKey')
```

This will create a **~/.plotly/.credentials** file. 

3) You will be using [plot.ly streams](https://plot.ly/streaming/), 
so create some streaming API tokens
[here](https://plot.ly/settings/api). You should create 3 to start.

4) Manually add the newly created streaming API tokens to **~/.plotly/.credentials** : 
```
{
    "username": "YourName",
    "stream_ids": [
        "id1",
        "id2",
        "id3"
    ],
    "api_key": "YourKey",
    "proxy_username": "",
    "proxy_password": ""
}
```

## Python API

Once your streaming API tokens are added, you can use them in your code without 
a hard-coded reference:

```python
import plotly.plotly as py
import plotly.tools as tls

stream_ids = tls.get_credentials_file()['stream_ids']
# Use the first streaming API token
stream_id = stream_ids[0]
stream = py.Stream(stream_id)
stream.open()
```





