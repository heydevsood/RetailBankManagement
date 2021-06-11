using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BANK.DAL;
using BANK.BO;
using System.Data;

namespace BANK.BLL
{
   public class BankBLL
    {
        //CREATE CUSTOMER
        public int LogIn(LoginDetails c)
        {
            try
            {
                BankDAL dal = new BankDAL();
                int role = dal.LogIn(c);
                return role;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public List<string> states()
        {
            try
            {
                BankDAL dal = new BankDAL();
                List<string> ds = dal.states();
                return ds;
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
                BankDAL dal = new BankDAL();
                List<string> ds = dal.cities(state);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
           
        }

        public long create_customer(Customer c)
        {
            try
            {
                BankDAL dal = new BankDAL();
                long id = dal.create_customer(c);
                return id;
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
                BankDAL dal = new BankDAL();
                int id = dal.cityid(city);
                return id;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //CREATE ACCOUNT
        public long create_account(Account a)
        {
            try
            {
                BankDAL dal = new BankDAL();
                long id = dal.create_account(a);
                return id;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        //ADD TRANSACTION
        public void add_transaction(Transaction t)
        {
            try
            {
                BankDAL dal = new BankDAL();
                dal.add_transaction(t);
                
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        //UPDATE CUSTOMER


        public void update_customer(Customer c)
        {
            try
            {
                BankDAL dal = new BankDAL();
                dal.update_customer(c);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public Customer find_customer(long ssn,long custid)
        {
            try
            {
                BankDAL dal = new BankDAL();
                Customer c = new Customer();
                c = dal.find_customer(ssn,custid);
                return c;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        //DELETE CUSTOMER

        public void delete_customer(long custid)
        {
            try
            {
                BankDAL dal = new BankDAL();
                dal.delete_customer(custid);
               
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        public List<int> find_account(long custid)
        {
            try
            {
                BankDAL dal = new BankDAL();
                List<int> list = new List<int>();
                list = dal.find_account(custid);

                return list;

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        //DELETE ACCOUNT

        public List<Account> find_account_id(long custid,long accid)
        {
            try
            {
                BankDAL dal = new BankDAL();
                List<Account> list = new List<Account>();
                list = dal.find_account_id(custid,accid);

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
                BankDAL dal = new BankDAL();
                dal.delete_account(accid);

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        //VIEW ACCOUNT AND CUSTOMERS
        public DataSet view_all_cust()
        {
            try
            {
                BankDAL dal = new BankDAL();
                DataSet ds = new DataSet();
                ds = dal.view_all_cust();
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
                BankDAL dal = new BankDAL();
                DataSet ds = new DataSet();
                ds = dal.view_active_cust();
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
                BankDAL dal = new BankDAL();
                DataSet ds = new DataSet();
                ds = dal.view_inactive_cust();
                return ds;

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public DataSet view_all_acc()
        {
            try
            {
                BankDAL dal = new BankDAL();
                DataSet ds = new DataSet();
                ds = dal.view_all_acc();
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
                BankDAL dal = new BankDAL();
                DataSet ds = new DataSet();
                ds = dal.view_active_acc();
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
                BankDAL dal = new BankDAL();
                DataSet ds = new DataSet();
                ds = dal.view_inactive_acc();
                return ds;

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        //GET ACCOUNT DETAILS


        public List<Account> account_details(long custid,long accid)
        {
            try
            {
                BankDAL dal = new BankDAL();

                List<Account> list = new List<Account>();
                list = dal.account_details(custid,accid);
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
                BankDAL dal = new BankDAL();
                dal.deposit(amount, accid);
                

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
                BankDAL dal = new BankDAL();
                dal.withdraw(amount, accid);


            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        //TRANSFER
        public void tranfer(int amount, long source, long target)
        {
            try
            {
                BankDAL dal = new BankDAL();
                dal.transfer(amount,source,target);


            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        //GET STATEMENT
        public DataSet statement_by_n(long accid, int n)
        {
            try
            {
                BankDAL dal = new BankDAL();
                DataSet ds = new DataSet();
                ds = dal.statement_by_n(accid,n);
                return ds;

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public DataSet statement_by_duration(long accid, DateTime start, DateTime end)
        {
            try
            {
                BankDAL dal = new BankDAL();
                DataSet ds = new DataSet();
                ds = dal.statement_by_duration(accid, start,end);
                return ds;

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }




    }
}
