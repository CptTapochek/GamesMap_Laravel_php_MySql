@section('table_block')
<table>
    <tr>
        <th class="mainHeader">Users Table</th>
        <th>Users</th>
        <th>Baned</th>
        <th>Moderators</th>
        <th>Admins</th>
    </tr>
    <tr>
        <th>Total:</th>
        <td>{{$users->count()}}</td>
        <td rowspan="6">{{$baned->count()}}</td>
        <td>{{$moderators->count()}}</td>
        <td>{{$admins->count()}}</td>
    </tr>
    <tr>
        <th>Online now:</th>
        <td>{{$OnlineUsersNow}}</td>
        <td>{{$OnlineModeratorsNow}}</td>
        <td>{{$OnlineAdminsNow}}</td>
    </tr>
    <tr>
        <th>Online per day:</th>
        <td>{{$UsersYesterday->count()}}</td>
        <td>{{$ModeratorsYesterday->count()}}</td>
        <td>{{$AdminsYesterday->count()}}</td>
    </tr>
    <tr>
        <th>Online per week:</th>
        <td>{{$UsersWeek->count()}}</td>
        <td>{{$ModeratorsWeek->count()}}</td>
        <td>{{$AdminsWeek->count()}}</td>
    </tr>
    <tr>
        <th>Online per month:</th>
        <td>{{$UsersMonth->count()}}</td>
        <td>{{$ModeratorsMonth->count()}}</td>
        <td>{{$AdminsMonth->count()}}</td>
    </tr>
    <tr>
        <th>Online per year:</th>
        <td>{{$UsersYear->count()}}</td>
        <td>{{$ModeratorsYear->count()}}</td>
        <td>{{$AdminsYear->count()}}</td>
    </tr>
</table><br><br>
<table>
    <tr>
        <th class="mainHeader">Posts Table</th>
        <th>Tags</th>
        <th>Sum</th>
        <th>Sum from tags</th>
        <th>Total</th>
    </tr>
    <tr>
        <th rowspan="23" class="mainHeader">Games</th>
        <th>Open World</th>
        <td>{{$openWorldTag}}</td>
        <td rowspan="23">{{$categoryGames->count()}}</td>
        <td rowspan="35">{{$Total_posts->count()}}</td>
    </tr>
    <tr>
        <th>Racing</th>
        <td>{{$racingTag}}</td>
    </tr>
    <tr>
        <th>Stealth</th>
        <td>{{$stealthTag}}</td>
    </tr>
    <tr>
        <th>Online Games</th>
        <td>{{$onlineGamesTag}}</td>
    </tr>
    <tr>
        <th>Zombies</th>
        <td>{{$zombieTag}}</td>
    </tr>
    <tr>
        <th>Horror</th>
        <td>{{$horrorTag}}</td>
    </tr>
    <tr>
        <th>Sports</th>
        <td>{{$sportTag}}</td>
    </tr>
    <tr>
        <th>Survival</th>
        <td>{{$survivolTag}}</td>
    </tr>
    <tr>
        <th>Fighting</th>
        <td>{{$drakiTag}}</td>
    </tr>
    <tr>
        <th>Arcades</th>
        <td>{{$arkadyTag}}</td>
    </tr>
    <tr>
        <th>Expected</th>
        <td>{{$ozhidaemyeTag}}</td>
    </tr>
    <tr>
        <th>Action</th>
        <td>{{$actionTag}}</td>
    </tr>
    <tr>
        <th>For low PC</th>
        <td>{{$lowPcTag}}</td>
    </tr>
    <tr>
        <th>Shooters</th>
        <td>{{$shooterTag}}</td>
    </tr>
    <tr>
        <th>Good Story</th>
        <td>{{$goodStoryTag}}</td>
    </tr>
    <tr>
        <th>Good Graphic</th>
        <td>{{$goodGraphicTag}}</td>
    </tr>
    <tr>
        <th>RPG</th>
        <td>{{$rpgTag}}</td>
    </tr>
    <tr>
        <th>Simulators</th>
        <td>{{$simTag}}</td>
    </tr>
    <tr>
        <th>Adventures</th>
        <td>{{$adventureTag}}</td>
    </tr>
    <tr>
        <th>VR-games</th>
        <td>{{$vrTag}}</td>
    </tr>
    <tr>
        <th>Strategies</th>
        <td>{{$stratTag}}</td>
    </tr>
    <tr>
        <th>First Person</th>
        <td>{{$firstTag}}</td>
    </tr>
    <tr>
        <th>Third Person</th>
        <td>{{$thirdTag}}</td>
    </tr>
    <tr>
        <th rowspan="8" class="mainHeader" >Software</th>
        <th>Design</th>
        <td>{{$designTag}}</td>
        <td rowspan="8">{{$categorySoft->count()}}</td>
    </tr>
    <tr>
        <th>Audio</th>
        <td>{{$audioTag}}</td>
    </tr>
    <tr>
        <th>Security</th>
        <td>{{$secTag}}</td>
    </tr>
    <tr>
        <th>Office</th>
        <td>{{$ofisTag}}</td>
    </tr>
    <tr>
        <th>Windows</th>
        <td>{{$windowsTag}}</td>
    </tr>
    <tr>
        <th>Programming</th>
        <td>{{$progTag}}</td>
    </tr>
    <tr>
        <th>Drivers</th>
        <td>{{$driverTag}}</td>
    </tr>
    <tr>
        <th>Others</th>
        <td>{{$otherTag}}</td>
    </tr>
    <tr>
        <th rowspan="4" class="mainHeader" >Files</th>
        <th>Cheat-mods</th>
        <td>{{$cheatModsTag}}</td>
        <td rowspan="4">{{$categoryCheats->count()}}</td>
    </tr>
    <tr>
        <th>Saves</th>
        <td>{{$saveTag}}</td>
    </tr>
    <tr>
        <th>Trainers</th>
        <td>{{$trainersTag}}</td>
    </tr>
    <tr>
        <th>Mods</th>
        <td>{{$modsTag}}</td>
    </tr>
</table>
