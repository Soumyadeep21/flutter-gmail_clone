class Email_Model
{
    String name,subject,full,time;
    bool favourite;
    Email_Model({this.name,this.subject,this.full,this.time,this.favourite});
}

List<Email_Model> model = [
  Email_Model(
    name: "Paytm",
    subject: "Your recharge is successful",
    full: "Mobile recharge of 458 is successfully done for your vodafone number",
    time: "19 Feb",
    favourite: false
  ),
  Email_Model(
      name: "Paytm",
      subject: "Your recharge is successful",
      full: "Mobile recharge of 458 is successfully done for your vodafone number",
      time: "19 Feb",
      favourite: true
  ),
];