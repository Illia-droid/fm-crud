const express = require("express");
const ThingController = require("./controllers/thing.controller");
const app = express();

app.use(express.json());
app
  .route("/things")
  .get(ThingController.getAllThings)
  .post(ThingController.createThings);

app
  .route("/things/:idThing")
  .get(ThingController.getThing)
  .put(ThingController.updateThing)
  .delete(ThingController.deleteThing);

app.use((err, req, res, next) => {
  res.status(500).send(err);
});
module.exports = app;
