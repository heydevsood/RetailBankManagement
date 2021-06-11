using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BANK.BO;

namespace BANK.DAL
{
   public class BankDAL
    {
        string constring = @"Data Source=HEYDEV\SQLEXPRESS;Initial Catalog=RetailBank;Integrated Security=True";
        //LOGIN
        public int LogIn(LoginDetails ld)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("getlogin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username", ld.UserName);
                cmd.Parameters.AddWithValue("@password", ld.Password);
                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                int role = 0;
                while (r.Read())
                {
                    role = Convert.ToInt32(r["UserRoleID"]);
                }
                con.Close();
                return role;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        
        }


        //FUNCTIONS FOR BANK EXECUTIVE

        //1. Create Customer

        public long create_customer(Customer c)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("create_customer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ssn",c.SSN);
                cmd.Parameters.AddWithValue("@name",c.Name);
                cmd.Parameters.AddWithValue("@address1", c.Add1);
                cmd.Parameters.AddWithValue("@address2", c.Add2);
                cmd.Parameters.AddWithValue("@cityid", c.CityID);
                cmd.Parameters.AddWithValue("@dob", c.DOB);
                cmd.Parameters.Add("@id",SqlDbType.BigInt).Direction = ParameterDirection.Output;

                con.Open();
                cmd.ExecuteNonQuery();
                long id = Convert.ToInt32(cmd.Parameters["@id"].Value);
                con.Close();
                return id;
               
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public List<string> states()
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("state_display", con);
                cmd.CommandType = CommandType.StoredProcedure;
                
                con.Open();
                List<string> st = new List<string>();
                SqlDataReader r = cmd.ExecuteReader();
                while(r.Read())
                {
                    string o = r[0].ToString();
                    st.Add(o);
                }
                con.Close();
                return st;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<string> cities(string state)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("city_display", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@state",state);

                con.Open();
                List<string> ct = new List<string>();
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                    string o = r[0].ToString();
                    ct.Add(o);
                }

                con.Close();
                return ct;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int cityid(string city)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("city_id", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cityname", city);

                con.Open();
                int ct = 0;
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                    ct = Convert.ToInt32(r[0]);
                }

                con.Close();
                return ct;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //2. CREATE ACCOUNT

        public long create_account(Account a)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("create_account", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@customerid",a.CustomerID);
                cmd.Parameters.AddWithValue("@accounttype", a.AccountType);
                cmd.Parameters.AddWithValue("@balance", a.Balance);
               

                con.Open();
                object o = cmd.ExecuteScalar();
                long id = Convert.ToInt64(o);
                con.Close();
                return id;


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //3. ADD TRANSACTION

        public void add_transaction(Transaction t)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("add_transaction", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@accountid", t.AccountID);
                cmd.Parameters.AddWithValue("@type", t.Type);
                cmd.Parameters.AddWithValue("@amount", t.Amount);
                cmd.Parameters.AddWithValue("@before", t.BalanceBefore);
                cmd.Parameters.AddWithValue("@after", t.BalanceAfter);
                cmd.Parameters.AddWithValue("@stamp", t.Time);



                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
              


            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        //4. UPDATE CUSTOMER

        public void update_customer(Customer c)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("update_customer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ssn", c.SSN);
                cmd.Parameters.AddWithValue("@customerid", c.CustomerID);
                cmd.Parameters.AddWithValue("@name", c.Name);
                cmd.Parameters.AddWithValue("@address1", c.Add1);
                cmd.Parameters.AddWithValue("@address2", c.Add2);
                cmd.Parameters.AddWithValue("@cityid", c.CityID);
                cmd.Parameters.AddWithValue("@dob", c.DOB);



                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();



            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        //5. View Customer details for Update

        public Customer find_customer(long ssn,long custid)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("find_customer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ssn", ssn);
                cmd.Parameters.AddWithValue("@customerid", custid);
                Customer c = new Customer();



                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                while(r.Read())
                {
                    c.SSN = Convert.ToInt64(r[0]);
                    c.CustomerID = Convert.ToInt64(r[1]);
                    c.Name = r[2].ToString();
                    c.Add1 = r[3].ToString();
                    c.Add2 = r[4].ToString();
                    c.DOB = Convert.ToDateTime(r[6]);
                    c.CityID = Convert.ToInt32(r[5]);
                }
                con.Close();
                return c;



            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        //DELETE CUSTOMER
        public List<int> find_account(long custid)
        {
            List<int> status = new List<int>();

            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("find_account", con);
                cmd.CommandType = CommandType.StoredProcedure;
               
                cmd.Parameters.AddWithValue("@customerid", custid);
                


                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                    int s = Convert.ToInt32(r[0]);
                    status.Add(s);
                }
                con.Close();
                return status;



            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public void delete_customer(long custid)
        {

            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("delete_customer", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@customerid", custid);



                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
               



            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        // DELETE ACCOUNT
        public List<Account> find_account_id(long custid, long accid)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("find_account_id", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@accountid", accid);
                cmd.Parameters.AddWithValue("@customerid", custid);
                List<Account> list = new List<Account>();



                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                    Account acc = new Account();
                    acc.CustomerID = Convert.ToInt64(r[0]);
                    acc.AccountID = Convert.ToInt64(r[1]);
                    acc.AccountType = Convert.ToChar(r[2]);
                    acc.Balance = Convert.ToInt32(r[3]);
                    acc.Status = Convert.ToInt32(r[4]);
                    list.Add(acc);
                }
                con.Close();
                return list;



            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public void delete_account(long accid)
        {

            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("delete_account", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@accountid", accid);



                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();




            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        //VIEW ALL CUSTOMERS

        public DataSet view_all_cust()
        {

            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("view_all_customers", con);
                cmd.CommandType = CommandType.StoredProcedure;


                con.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                
                con.Close();
                return ds;




            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        public DataSet view_active_cust()
        {

            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("view_active_customer", con);
                cmd.CommandType = CommandType.StoredProcedure;


                con.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);

                con.Close();
                return ds;




            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public DataSet view_inactive_cust()
        {

            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("view_inactive_customer", con);
                cmd.CommandType = CommandType.StoredProcedure;


                con.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);

                con.Close();
                return ds;




            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        //View ALL ACCOUNTS

        public DataSet view_all_acc()
        {

            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("view_all_account", con);
                cmd.CommandType = CommandType.StoredProcedure;


                con.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);

                con.Close();
                return ds;




            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        public DataSet view_active_acc()
        {

            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("view_active_account", con);
                cmd.CommandType = CommandType.StoredProcedure;


                con.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);

                con.Close();
                return ds;




            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        public DataSet view_inactive_acc()
        {

            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("view_inactive_account", con);
                cmd.CommandType = CommandType.StoredProcedure;


                con.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);

                con.Close();
                return ds;




            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        // FIND ACCOUNT DETAILS BY ID

        public List<Account> account_details(long custid, long accid)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("account_details", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@accountid", accid);
                cmd.Parameters.AddWithValue("@customerid", custid);
                cmd.Parameters.AddWithValue("@ssn", custid);

                List<Account> list = new List<Account>();



                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                    Account acc = new Account();
                    acc.CustomerID = Convert.ToInt64(r[0]);
                    acc.AccountID = Convert.ToInt64(r[1]);
                    acc.AccountType = Convert.ToChar(r[2]);
                    acc.Balance = Convert.ToInt32(r[3]);
                    acc.Status = Convert.ToInt32(r[4]);
                    list.Add(acc);
                }
                con.Close();
                return list;



            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        //DEPOSIT

        public void deposit(int amount, long accid)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("deposit", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@accountid", accid);
                cmd.Parameters.AddWithValue("@amount", amount);
               

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
           



            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //WITHDRAW
        public void withdraw(int amount, long accid)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("withdraw", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@accountid", accid);
                cmd.Parameters.AddWithValue("@amount", amount);


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();




            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //TRANSFER

        public void transfer(int amount, long source, long target)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("transfer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@source", source);
                cmd.Parameters.AddWithValue("@amount", amount);
                cmd.Parameters.AddWithValue("@target", target);


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();




            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        //GET STATEMENTS

        public DataSet statement_by_n(long accid, int n)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("statement_n", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@n", n);
                cmd.Parameters.AddWithValue("@accountid", accid);
               
                

                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                con.Close();
                return ds;




            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataSet statement_by_duration(long accid, DateTime start,DateTime end)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("statement_duration", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@start", start);
                cmd.Parameters.AddWithValue("@accountid", accid);
                cmd.Parameters.AddWithValue("@end", end);




                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                con.Close();
                return ds;




            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
