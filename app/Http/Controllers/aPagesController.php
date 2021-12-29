<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Contact;
use App\Models\Post;
use App\Models\Report;
use App\Models\Statistic;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;

class aPagesController extends Controller
{
    public function getaPages()
    {
        $total_users = User::get();
        /* Users */
        $users = $total_users->where('is_user', true);
        $admins = $total_users->where('is_admin', true);
        $moderators = $total_users->where('is_moderator', true);
        $baned = $total_users->where('is_baned', true);

        /* Is online now */
        $OnlineUsersNow = 0;
        foreach ($users as $a){if ($a->isOnline()){$OnlineUsersNow++;}}
        $OnlineModeratorsNow = 0;
        foreach ($moderators as $b){if ($b->isOnline()){$OnlineModeratorsNow++;}}
        $OnlineAdminsNow = 0;
        foreach ($admins as $c){if ($c->isOnline()){$OnlineAdminsNow++;}}


        /* Online per Day */
        $CurrentTime = time();
        $statistic = Statistic::get();
        $PastYesterdayTime = time() - (24*60*60);
        $UsersYesterday = $statistic->where('user', true)->where('time', '>', $PastYesterdayTime)->where('time', '<', $CurrentTime);
        $ModeratorsYesterday = $statistic->where('moderator', true)->where('time', '>', $PastYesterdayTime)->where('time', '<', $CurrentTime);
        $AdminsYesterday = $statistic->where('admin', true)->where('time', '>', $PastYesterdayTime)->where('time', '<', $CurrentTime);

        /* Online per Week */
        $PastWeekTime = time() - (7*24*60*60);
        $UsersWeek = $statistic->where('user', true)->where('time', '>', $PastWeekTime)->where('time', '<', $CurrentTime);
        $ModeratorsWeek = $statistic->where('moderator', true)->where('time', '>', $PastWeekTime)->where('time', '<', $CurrentTime);
        $AdminsWeek = $statistic->where('admin', true)->where('time', '>', $PastWeekTime)->where('time', '<', $CurrentTime);

        /* Online per Month */
        $PastMonthTime = time() - (30*24*60*60);
        $UsersMonth = $statistic->where('user', true)->where('time', '>', $PastMonthTime)->where('time', '<', $CurrentTime);
        $ModeratorsMonth = $statistic->where('moderator', true)->where('time', '>', $PastMonthTime)->where('time', '<', $CurrentTime);
        $AdminsMonth = $statistic->where('admin', true)->where('time', '>', $PastMonthTime)->where('time', '<', $CurrentTime);

        /* Online per Year */
        $PastYearTime = time() - (364*24*60*60);
        $UsersYear = $statistic->where('user', true)->where('time', '>', $PastYearTime)->where('time', '<', $CurrentTime);
        $ModeratorsYear = $statistic->where('moderator', true)->where('time', '>', $PastYearTime)->where('time', '<', $CurrentTime);
        $AdminsYear = $statistic->where('admin', true)->where('time', '>', $PastYearTime)->where('time', '<', $CurrentTime);

        /* Posts */
        if (Cache::has('total_posts')){
            $Total_posts = Cache::get('total_posts');
        }
        else{
            $Total_posts = Post::get();
            Cache::put('total_posts', $Total_posts, 3600);
        }

        /* Categories */
        if (Cache::has('categories_aPages')){
            $category = Cache::get('categories_aPages');
        }
        else{
            $category = DB::table('categories')->get();
            Cache::put('categories_aPages', $category);
        }

        $gamesCat = $category->where('slug', 'games'); $GamesID = 0;
        foreach ($gamesCat as $x){$GamesID = $x->id;}
        $categoryGames = $Total_posts->where('category_id', $GamesID);

        $softCat = $category->where('slug', 'software'); $SoftID = 0;
        foreach ($softCat as $y){$SoftID = $y->id;}
        $categorySoft = $Total_posts->where('category_id', $SoftID);

        $CheatCat = $category->where('slug', 'cheats'); $CheatID = 0;
        foreach ($CheatCat as $z){$CheatID = $z->id;}
        $categoryCheats = $Total_posts->where('category_id', $CheatID);


        /* Tags */
        if (Cache::has('AllTags')){
            $tags = Cache::get('AllTags');
        }
        else{
            $tags = DB::table('tags')->get();
            Cache::put('AllTags', $tags);
        }

        if (Cache::has('Post_tags')){
            $post_tag = Cache::get('Post_tags');
        }
        else{
            $post_tag = DB::table('post_tag')->get();
            Cache::put('Post_tags', $post_tag);
        }

        $openWorld = $tags->where('slug', 'otkrytyy-mir'); $openWorldID = 0; foreach ($openWorld as $a){$openWorldID = $a->id;}
        $openWorldTag = $post_tag->where('tag_id', $openWorldID)->count();

        $racing = $tags->where('slug', 'gonki'); $racingID = 0; foreach ($racing as $a){$racingID = $a->id;}
        $racingTag = $post_tag->where('tag_id', $racingID)->count();

        $stealth = $tags->where('slug', 'stels'); $stealthID = 0; foreach ($stealth as $a){$stealthID = $a->id;}
        $stealthTag = $post_tag->where('tag_id', $stealthID)->count();

        $onlineGames = $tags->where('slug', 'igry-s-onlaynom'); $onlineGamesID = 0; foreach ($onlineGames as $a){$onlineGamesID = $a->id;}
        $onlineGamesTag = $post_tag->where('tag_id', $onlineGamesID)->count();

        $zombie = $tags->where('slug', 'zombi'); $zombieID = 0; foreach ($zombie as $a){$zombieID = $a->id;}
        $zombieTag = $post_tag->where('tag_id', $zombieID)->count();

        $horror = $tags->where('slug', 'horror'); $horrorID = 0; foreach ($horror as $a){$horrorID = $a->id;}
        $horrorTag = $post_tag->where('tag_id', $horrorID)->count();

        $sport = $tags->where('slug', 'sportivnye'); $sportID = 0; foreach ($sport as $a){$sportID = $a->id;}
        $sportTag = $post_tag->where('tag_id', $sportID)->count();

        $survivol = $tags->where('slug', 'vyzhivanie'); $survivolID = 0; foreach ($survivol as $a){$survivolID = $a->id;}
        $survivolTag = $post_tag->where('tag_id', $survivolID)->count();

        $draki = $tags->where('slug', 'draki'); $drakiID = 0; foreach ($draki as $a){$drakiID = $a->id;}
        $drakiTag = $post_tag->where('tag_id', $drakiID)->count();

        $arkady = $tags->where('slug', 'arkady'); $arkadyID = 0; foreach ($arkady as $a){$arkadyID = $a->id;}
        $arkadyTag = $post_tag->where('tag_id', $arkadyID)->count();

        $ozhidaemye = $tags->where('slug', 'ozhidaemye'); $ozhidaemyeID = 0; foreach ($ozhidaemye as $a){$ozhidaemyeID = $a->id;}
        $ozhidaemyeTag = $post_tag->where('tag_id', $ozhidaemyeID)->count();

        $action = $tags->where('slug', 'ekshen'); $actionID = 0; foreach ($action as $a){$actionID = $a->id;}
        $actionTag = $post_tag->where('tag_id', $actionID)->count();

        $lowPc = $tags->where('slug', 'dlya-slabyh-pk'); $lowPcID = 0; foreach ($lowPc as $a){$lowPcID = $a->id;}
        $lowPcTag = $post_tag->where('tag_id', $lowPcID)->count();

        $shooter = $tags->where('slug', 'shutery'); $shooterID = 0; foreach ($shooter as $a){$shooterID = $a->id;}
        $shooterTag = $post_tag->where('tag_id', $shooterID)->count();

        $goodStory = $tags->where('slug', 'horoshiy-syuzhet'); $goodStoryID = 0; foreach ($goodStory as $a){$goodStoryID = $a->id;}
        $goodStoryTag = $post_tag->where('tag_id', $goodStoryID)->count();

        $goodGraphic = $tags->where('slug', 'horoshaya-grafika'); $goodGraphicID = 0; foreach ($goodGraphic as $a){$goodGraphicID = $a->id;}
        $goodGraphicTag = $post_tag->where('tag_id', $goodGraphicID)->count();

        $rpg = $tags->where('slug', 'rolevye-rpg'); $rpgID = 0; foreach ($rpg as $a){$rpgID = $a->id;}
        $rpgTag = $post_tag->where('tag_id', $rpgID)->count();

        $sim = $tags->where('slug', 'simulyatory'); $simID = 0; foreach ($sim as $a){$simID = $a->id;}
        $simTag = $post_tag->where('tag_id', $simID)->count();

        $adventure = $tags->where('slug', 'priklyucheniya'); $adventureID = 0; foreach ($adventure as $a){$adventureID = $a->id;}
        $adventureTag = $post_tag->where('tag_id', $adventureID)->count();

        $vr = $tags->where('slug', 'vr-igry'); $vrID = 0; foreach ($vr as $a){$vrID = $a->id;}
        $vrTag = $post_tag->where('tag_id', $vrID)->count();

        $strat = $tags->where('slug', 'strategii'); $stratID = 0; foreach ($strat as $a){$stratID = $a->id;}
        $stratTag = $post_tag->where('tag_id', $stratID)->count();

        $design = $tags->where('slug', 'dizayn'); $designID = 0; foreach ($design as $a){$designID = $a->id;}
        $designTag = $post_tag->where('tag_id', $designID)->count();

        $audio = $tags->where('slug', 'audio'); $audioID = 0; foreach ($audio as $a){$audioID = $a->id;}
        $audioTag = $post_tag->where('tag_id', $audioID)->count();

        $sec = $tags->where('slug', 'bezopasnost'); $secID = 0; foreach ($sec as $a){$secID = $a->id;}
        $secTag = $post_tag->where('tag_id', $secID)->count();

        $ofis = $tags->where('slug', 'ofis'); $ofisID = 0; foreach ($ofis as $a){$ofisID = $a->id;}
        $ofisTag = $post_tag->where('tag_id', $ofisID)->count();

        $windows = $tags->where('slug', 'windows'); $windowsID = 0; foreach ($windows as $a){$windowsID = $a->id;}
        $windowsTag = $post_tag->where('tag_id', $windowsID)->count();

        $prog = $tags->where('slug', 'programmirovanie'); $progID = 0; foreach ($prog as $a){$progID = $a->id;}
        $progTag = $post_tag->where('tag_id', $progID)->count();

        $driver = $tags->where('slug', 'drayvery'); $driverID = 0; foreach ($driver as $a){$driverID = $a->id;}
        $driverTag = $post_tag->where('tag_id', $driverID)->count();

        $other = $tags->where('slug', 'drugie'); $otherID = 0; foreach ($other as $a){$otherID = $a->id;}
        $otherTag = $post_tag->where('tag_id', $otherID)->count();

        $cheatMods = $tags->where('slug', 'chit-mody'); $cheatModsID = 0; foreach ($cheatMods as $a){$cheatModsID = $a->id;}
        $cheatModsTag = $post_tag->where('tag_id', $cheatModsID)->count();

        $save = $tags->where('slug', 'sohraneniya'); $saveID = 0; foreach ($save as $a){$saveID = $a->id;}
        $saveTag = $post_tag->where('tag_id', $saveID)->count();

        $trainers = $tags->where('slug', 'treynery'); $trainersID = 0; foreach ($trainers as $a){$trainersID = $a->id;}
        $trainersTag = $post_tag->where('tag_id', $trainersID)->count();

        $mods = $tags->where('slug', 'mody'); $modsID = 0; foreach ($mods as $a){$modsID = $a->id;}
        $modsTag = $post_tag->where('tag_id', $modsID)->count();

        $first = $tags->where('slug', 'ot-pervogo-lica'); $firstID = 0; foreach ($first as $a){$firstID = $a->id;}
        $firstTag = $post_tag->where('tag_id', $firstID)->count();

        $third = $tags->where('slug', 'ot-tretego-lica'); $thirdID = 0; foreach ($third as $a){$thirdID = $a->id;}
        $thirdTag = $post_tag->where('tag_id', $thirdID)->count();

        /* Contact messages notify */
        $messages = Contact::get();
        $total_notify = 0;
        foreach ($messages as $msg){
            if ($msg->seen == 0){
                $total_notify++;
            }
        }

        /* Reports notify */
        $reports = Report::get();
        $reports_notify = 0;
        foreach ($reports as $rep)
        {
            if($rep->seen == 0){
                $reports_notify++;
            }
        }


        return view('aPages/admin_p', compact('users', 'admins', 'moderators', 'baned',
            'OnlineUsersNow', 'OnlineModeratorsNow', 'OnlineAdminsNow', 'UsersYesterday', 'ModeratorsYesterday', 'AdminsYesterday',
        'UsersWeek', 'ModeratorsWeek', 'AdminsWeek', 'UsersMonth', 'ModeratorsMonth', 'AdminsMonth',
        'UsersYear', 'ModeratorsYear', 'AdminsYear', 'Total_posts', 'categoryGames' ,'categorySoft', 'categoryCheats',
        'openWorldTag', 'racingTag', 'stealthTag', 'onlineGamesTag', 'zombieTag', 'horrorTag', 'sportTag', 'survivolTag', 'drakiTag', 'arkadyTag',
        'ozhidaemyeTag', 'actionTag', 'lowPcTag', 'shooterTag', 'goodStoryTag', 'goodGraphicTag', 'rpgTag', 'simTag', 'adventureTag',
        'vrTag', 'stratTag', 'designTag', 'audioTag', 'secTag', 'ofisTag', 'windowsTag', 'progTag', 'driverTag', 'otherTag', 'cheatModsTag',
        'saveTag', 'trainersTag', 'modsTag', 'firstTag', 'thirdTag', 'total_notify', 'reports_notify'));
    }

}
