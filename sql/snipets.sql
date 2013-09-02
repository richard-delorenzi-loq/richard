--get user agent of user
SELECT trans.info 
  FROM [prod_cawh_qsmart-2013-08-30].[dbo].[Users] as users
  join [prod_cawh_qsmart-2013-08-30].[shop].[Basket] as basket
    on users.UserId = basket.UserID
  join [prod_cawh_payment-2013-08-30].[dbo].[Transaction] as trans
    on  trans.BasketID = basket.Id
  Where users.UserName = 'agnesruud@ziggo.nl'

--get service level of user
SELECT session.Guests, level.name
  FROM [prod_cawh_qsmart-2013-08-30].[dbo].[Users] as users
  join [prod_cawh_qsmart-2013-08-30].[dbo].[Session] as session
    on users.UserId = session.CustomerID
  join [prod_cawh_qsmart-2013-08-30].[dbo].ServiceLevel as level
    on session.ServiceLevelID = level.ID
  Where users.UserName = 'agnesruud@ziggo.nl'