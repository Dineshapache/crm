trigger CreateTask on Lead (After insert) 
{
  for(Lead L :Trigger.new)
  {
    Task T = new Task();
    t.WhoId = l.id;
    t.Priority= 'Normal';
    t.status='In Progress';
    t.Subject ='Lead Creation';
    insert t;
    }
 }