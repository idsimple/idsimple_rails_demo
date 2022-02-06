# Idsimple Rails Demo

This is a simple demo to show how to setup [idsimple](https://idsimple.io) in a Rails app.

To get going, first [sign up for idsimple](https://app.idsimple.io/account/sign_up) and then follow the steps below:


1. Create an organization on idsimple if you haven't already.

2. Create an app and name it "Rails Demo". Set the access url to `http://localhost:3000`. You'll want to use `http` and not `https` for the demo. See the [Getting Started](https://idsimple.io/docs/getting-started) doc to see some screenshots.

3. Once you've created an app, you'll be presented with the App ID, App Session API Key, and Signing Secret. Keep these on screen or copy them somewhere temporarily. You'll need them for step `5` below.

4. Clone this repo and `cd` into the project.

```sh
git clone https://github.com/idsimple/idsimple_rails_demo.git
cd idsimple_rails_demo
```

5. Run the demo using the App ID, API Key, and Signing Secret from step `3`.

```sh
IDSIMPLE_APP_ID=INSERT_YOUR_APPID IDSIMPLE_API_KEY=INSERT_YOUR_API_KEY IDSIMPLE_SIGNING_SECRET=INSERT_YOUR_SIGNING_SECRET bundle exec rails server
```

6. Open an incognito window or log out of idsimple and go to `http://localhost:3000` in your browser window. Note that you will be redirected to `https://app.idsimple.io/account/sign_in` to authenticate with idsimple. This demo uses [idsimple-rack](https://github.com/idsimple/idsimple-rack) which will, by default, redirect you to authenticate with idsimple before you are allowed access. If you'd like to return an unathorized response instead, you can set the [`redirect_to_authenticate`](https://github.com/idsimple/idsimple-rack#redirect_to_authenticate) configuration option.

7. Log in with your idsimple credentials and you will be redirected back to the demo app at `http://localhost:3000`. You should now see a "Hello! You're now authenticated!" message. By authenticating with idsimple, you've validated that you have access to the demo application and started your first session. If you now navigate back to your app in the idsimple application at `https://app.idsimple.io/apps/:app_id`, you'll see the session you created!

Now that you're up and running, you can play with various app settings at `https://app.idsimple.io/apps/:app_id/settings` and [configuration settings for `idsimple-rack`](https://github.com/idsimple/idsimple-rack#configuration) in the [initializer](https://github.com/idsimple/idsimple_rails_demo/blob/main/config/initializers/idsimple.rb).
