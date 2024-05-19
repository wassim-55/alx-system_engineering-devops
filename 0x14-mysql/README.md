# MySQL Configuration Project

This project focuses on learning how to configure database servers in a primary-replica model. The goal was to configure two servers provided by ALX in a MySQL primary-replica setup with a dummy database, and to automate the generation of database backups using a Bash script.

## Tasks 📃

### 1. MySQL Primary Server Configuration

**File:** `4-mysql_configuration_primary`

This is the MySQL `my.conf` configuration file used to set up the first server as the primary database server for the database `tyrell_corp`.

### 2. MySQL Replica Server Configuration

**File:** `4-mysql_configuration_replica`

This is the MySQL `my.conf` configuration file used to set up the second server as the replica database server for the database `tyrell_corp`.

### 3. MySQL Backup Script

**Script:** `5-mysql_backup`

This Bash script generates a compressed `tar.gz` archive from a MySQL dump.

**Usage:**
```bash
./5-mysql_backup <MySQL root password>
```

- Generates a dump containing all MySQL databases on the root server.
- Names the resulting tar archive in the format `day-month-year.tar.gz`.

## How to Use

1. **Configure the Primary Server:**
   - Use the `4-mysql_configuration_primary` file to configure your first server as the primary database server.
   
   ```bash
   cp 4-mysql_configuration_primary /etc/mysql/my.conf
   service mysql restart
   ```

2. **Configure the Replica Server:**
   - Use the `4-mysql_configuration_replica` file to configure your second server as the replica database server.
   
   ```bash
   cp 4-mysql_configuration_replica /etc/mysql/my.conf
   service mysql restart
   ```

3. **Generate Database Backups:**
   - Run the `5-mysql_backup` script to create a backup of all databases.
   
   ```bash
   ./5-mysql_backup <MySQL root password>
   ```

## Prerequisites

- Ensure MySQL is installed on both servers.
- You have sufficient privileges to modify MySQL configurations and perform backups.

## Conclusion

By following these tasks, you can set up a MySQL primary-replica configuration and automate database backups to ensure data integrity and availability.

Feel free to customize the configuration files and scripts to fit your specific requirements.
```
