<div class="modal fade" id="advanced_search_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center" id="myModalLabel"><span class="title">Advanced Search</span></h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="advanced_search_form" action="../controllers/ValidateForm.php" method="get">
                    <input type="hidden" id="result_type" name="result_type" value="video">
                    <input type="hidden" id="search" name="search">
                    <input type="hidden" id="sites" name="sites">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="duration" class="control-label">Duration</label>
                            <div class="radio">
                                <label><input type="radio" name="duration" value="0" checked="checked">ANY SIZE</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="duration" value="1_2">1-2 Min</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="duration" value="3_5">3-5 Min</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="duration" value="6_10">6-10 Min</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="duration" value="11_30">11-30 Min</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="duration" value="31_45">31-45 Min</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="duration" value="46">45+ Min</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="upload_date" class="control-label">Upload Date</label>
                            <div class="radio">
                                <label><input type="radio" name="upload_date" value="0" checked="checked">ANYTIME</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="upload_date" value="1">Today</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="upload_date" value="7">This Week</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="upload_date" value="30">This Month</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="video_quality" class="control-label">Quality</label>
                            <div class="radio">
                                <label><input type="radio" name="video_quality" value="all" checked="checked">ANY QUALITY</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="video_quality" value="HD">HD Videos</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="order" class="control-label">Order By</label>
                            <div class="radio">
                                <label><input type="radio" name="order" value="0" checked="checked">ANY ORDER</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="order" value="dt_insert">Newest First</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="order" value="quality">Best Qualified First</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="order" value="views">Most Viewed First</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="site" class="control-label">From</label>
                        <div id="sites-list">
                            <div class="checkbox">
                                <label><input type="checkbox" name="site[]" value="site-0" checked="checked">ANYONE</label>
                            </div>
                            {foreach $sites site}
                                <div class="checkbox">
                                    <label><input type="checkbox" name="site[]" value="{$site.id}">{$site.name}</label>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <div class="col-md-12 span7 text-center">
                            <button class="btn btn-default" type="submit" name="advanced_search_form" value="Search">Search</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>