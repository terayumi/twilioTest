// Download the helper library from https://www.twilio.com/docs/node/install
// Find your Account SID and Auth Token at twilio.com/console
// and set the environment variables. See http://twil.io/secure
const accountSid = "AC529612889d9d007c534a2fb1e0f9c6cd";
const authToken = "b8807b0475edcc1ad59e34fdd1792256";
const client = require('twilio')(accountSid, authToken);

client.messages
  .create({
     body: 'This is the ship that made the Kessel Run in fourteen parsecs?',
     from: '+16073035807',
     to: '+818025010933'
   })
  .then(message => console.log(message.sid));
