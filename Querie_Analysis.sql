-- Lets review with what are we working.

select top 25 *
from spotify


-- Retrieve the names of all tracks that have more than 1 billion streams.

select 
	track, 
	Artist, 
	Stream
from Spotify 
where Stream > 1000000000
order by Stream desc

-- Which artist has the most songs with 1 billion streamed.

select 
	artist, 
	count(track) as Songs_Over_1B
from Spotify
where stream > 1000000000
group by Artist
order by Songs_Over_1B desc

-- List all albums along with their respective artists.

select distinct 
	album, 
	artist
from spotify
order by album desc

-- How many albums does each artist have

select 
	top 15 
	artist, 
	count(album) as Numer_Of_Albums
from Spotify
group by Artist
order by Numer_Of_Albums desc

-- Get the total number of comments for tracks where licensed = TRUE.

select 
	Top 15 
	Track, 
	Comments
from Spotify
where Licensed = 'True' -- In this case, the information of True or False is saved as 1 and 0, but we can still use True. 
order by Comments desc

-- How Many Tracks are licensed?

select 
	Licensed, 
	count(*) as Number_Of_Licensed_Songs
from Spotify
group by Licensed
Order by Number_Of_Licensed_Songs desc

-- Find all tracks that belong to the album type single.

select 
	track, 
	Artist, 
	Album_type
from Spotify
where Album_type = 'single'

-- How many Single album type does each artist have?

select 
	Artist, 
	count(Album_type) as Number_Of_Single_Albums
from Spotify
where Album_type = 'single'
group by Artist
Order by Number_Of_Single_Albums desc

-- Count the total number of tracks by each artist.

select 
	Artist, 
	count(track) as Number_Of_Songs
from Spotify
group by Artist
Order by Number_Of_Songs desc 

-- Calculate the average danceability of tracks in each album.

select 
	Album, 
	avg(Danceability) as Avg_Dance
from Spotify
group by album
Order by Avg_Dance desc

-- Find the top 5 tracks with the highest energy values.

select top 5 Track, Energy
from Spotify
Order by Energy desc

-- List all tracks along with their views and likes where official_video = TRUE.

select top 15 Track, sum(Views) as Total_Views, sum(Likes) as Total_Likes
from Spotify
where official_video = 'True'
group by Track
Order by Total_Views desc

-- For each album, calculate the total views of all associated tracks.

select album, track, sum(Views) as Total_Views
from Spotify
group by album, Track
order by Total_views desc

-- Retrieve the track names that have been streamed on Spotify more than YouTube.

select track, Artist, stream
from Spotify
where most_playedon = 'Spotify'
order by stream desc

-- How can we validate this?

select 
	track, 
	Artist,
	sum(case when most_playedon = 'Spotify' then stream end) as Streamed_Spotify,
	sum(case when most_playedon = 'Youtube' then stream end) as Streamed_Youtube
from Spotify
group by track, artist
order by Streamed_Spotify desc

-- Find the top 3 most-viewed tracks for each artist using window functions.

with Most_viewed as (
select 
	Artist,
	Track,
	sum(Views) as Total_views,
	DENSE_RANK() over(partition by artist order by sum(views) desc) as Ranked
from Spotify
group by Artist, Track
)
select *
from Most_viewed
where ranked <= 3
order by artist, Total_views desc

-- Write a query to find tracks where the liveness score is above the average.

select 
	Track,
	Artist,
	Liveness
from Spotify
where Liveness > (select avg(liveness) as Avg_liv from Spotify) -- 361.85
order by Liveness asc

-- Use a WITH clause to calculate the difference between the highest and lowest energy values for tracks in each album.

with rank_energy_album as(
select 
	Album,
	max(Energy) as Max_Energy,
	min(energy) as Min_Energy
from Spotify
group by Album
)
select 
	Album,
	Max_Energy - Min_Energy as Energy_diff
from rank_energy_album
order by Energy_diff desc

select
	Artist,
	track,
	Duration_min
from Spotify
order by Duration_min desc

select Artist, Track, Views, Likes
from Spotify
order by views desc 