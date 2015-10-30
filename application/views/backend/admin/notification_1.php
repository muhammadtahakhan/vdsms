<div class="row">
   
<table class="table mail-table">
					<!-- mail table header -->
					<thead>
						<tr>
							<th width="5%">
								<div class="checkbox checkbox-replace">
									<input type="checkbox" />
								</div>
                                                        </th>
                                                        <th></th>
                                                        <th></th>
							<th colspan="4">
								
								
								
								<div class="mail-pagination" colspan="2">
									<strong>1-30</strong> <span>of 789</span>
									
									<div class="btn-group">
										<a href="#" class="btn btn-sm btn-white"><i class="entypo-left-open"></i></a>
										<a href="#" class="btn btn-sm btn-white"><i class="entypo-right-open"></i></a>
									</div>
								</div>
							</th>
						</tr>
					</thead>
					
					<!-- email list -->
					<tbody>
                                            <?php 
                                            foreach($query as $data){                                           
                                            
                                            ?>
						<tr class="unread"><!-- new email class: unread -->
							<td>
								<div class="checkbox checkbox-replace">
									<input type="checkbox" />
								</div>
							</td>
							<td class="col-name">
								<a href="#" class="star stared">
									<i class="entypo-star"></i>
								</a>
                                                            <a href="mailbox-message.html" class="col-name"><?= $data[name]; ?></a>
							</td>
							<td class="col-subject">
								<a href="mailbox-message.html">
									<?= $data[message]; ?>
								</a>
							</td>
							<td class="col-options">
								<!--<a href="mailbox-message.html"><i class="entypo-attach"></i></a>-->
							</td>
							<td class="col-time"><?= $data[date]; ?></td>
						</tr>
						
                                            <?php } ?>
						
						
						
						
						
						<tr class="unread">
							<td>
								<div class="checkbox checkbox-replace">
									<input type="checkbox" />
								</div>
							</td>
							<td class="col-name">
								<a href="#" class="star">
									<i class="entypo-star"></i>
								</a>
								<a href="mailbox-message.html" class="col-name">James Blue</a>
							</td>
							<td class="col-subject">
								<a href="mailbox-message.html">
									<span class="label label-info">Sports</span>
									There are 20 notifications
								</a>
							</td>
							<td class="col-options"></td>
							<td class="col-time">18 Oct</td>
						</tr>
						
						<tr>
							<td>
								<div class="checkbox checkbox-replace">
									<input type="checkbox" />
								</div>
							</td>
							<td class="col-name">
								<a href="#" class="star">
									<i class="entypo-star"></i>
								</a>
								<a href="mailbox-message.html" class="col-name">SomeHost</a>
							</td>
							<td class="col-subject">
								<a href="mailbox-message.html">
									Bugs in your system.
								</a>
							</td>
							<td class="col-options"></td>
							<td class="col-time">01 Sep</td>
						</tr>
					</tbody>
					
					<!-- mail table footer -->
					<tfoot>
						<tr>
							<th width="5%">
								<div class="checkbox checkbox-replace">
									<input type="checkbox" />
								</div>
							</th>
							<th colspan="4">
								
								<div class="mail-pagination" colspan="2">
									<strong>1-30</strong> <span>of 789</span>
									
									<div class="btn-group">
										<a href="#" class="btn btn-sm btn-white"><i class="entypo-left-open"></i></a>
										<a href="#" class="btn btn-sm btn-white"><i class="entypo-right-open"></i></a>
									</div>
								</div>
							</th>
						</tr>
					</tfoot>
				</table>
	
    </div>