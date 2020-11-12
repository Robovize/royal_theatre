


<div class="search-boxes">
    <!-- //////////////////////////////////////////
            PRODUCTION NAME SEARCH START 
         //////////////////////////////////////////-->
    <div class="search-box">
    <form id="search_name" method="post" action="search_script.php">
        <label>Production name:</label>
        <input type="text" placeholder="Type name of production" name="name">
        <input type="submit" value="Search" name="search_name">
    </form>
        </div>
    <!-- //////////////////////////////////////////
            PRODUCTION NAME SEARCH END 
         //////////////////////////////////////////-->
    <!-- //////////////////////////////////////////
            PRODUCTION DATE SEARCH START 
         //////////////////////////////////////////-->
    <div class="search-box">
    <form id="search_date" method="post" action="search_script.php">
        <label>Start date:</label>
        <input type="date" name="date_start" value="2018-07-22">
        <input type="date" name="date_end" value="2018-07-22">
        <input type="submit" name="search_date" value="Search">
    </form>
    </div>
    <!-- //////////////////////////////////////////
            PRODUCTION DATE SEARCH END 
         //////////////////////////////////////////-->
    <!-- //////////////////////////////////////////
            PRODUCTION GENRE SEARCH START 
         //////////////////////////////////////////-->
    <div class="search-box">
    <form id="search_upcoming" action="search_script.php" method="post">
        <label>Upcoming production by genre:</label>
        <input list="genre" name="genre" placeholder="Select genre">
        <datalist id="genre">
            <option value="Comedy">
            <option value="Concert">
            <option value="Dance">
            <option value="Drama">
            <option value="Musical">
            <option value="Opera">
            <option value="Panto">
        </datalist>
        <input type="submit" name="search_upcoming" value="Search">


    </form>
    </div>
    </div>